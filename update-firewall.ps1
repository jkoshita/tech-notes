<#
    Task Scheduler
        [General]
        * Run whether user is logged on or not
            - Do not store password. The task will only have access to local computer resources.
        - Run with highest privileges
        [Triggers]
        * Begin the task: At task creation/modification
        - Repeat task every: 10 minutes for a duration of: Indefinitely
        - Enabled
        [Actions]
        Action: Start a program
        Program/script: "C:\Program Files\PowerShell\7\pwsh.exe"
        Add arguments (optional): -File C:\Users\jkoshita\Documents\update-firewall.ps1
#>

$userprofile = "jkoshita"
$application_folder = Get-ChildItem -Attributes D -Path C:\Users\${userprofile}\AppData\Local\Discord\app-* -Name
$old_application_folder_path = "C:\Users\${userprofile}\AppData\Local\Discord\old_application_folder"
$old_application_folder = Get-Content -Path $old_application_folder_path
if ($application_folder -cnotlike $old_application_folder) {
    Remove-NetFirewallRule -DisplayName "discord.exe (script)"
    New-NetFirewallRule -DisplayName "discord.exe (script)" -Program "C:\Users\${userprofile}\AppData\Local\Discord\${application_folder}\Discord.exe" -Direction Outbound -Protocol UDP -RemotePort 50000-65535 -Action Allow
    $application_folder | Out-File -FilePath $old_application_folder_path -Encoding ASCII
}
