New-Alias -Name linksys.lan -Value C:\Users\jkoshita\.ssh\login\linksys.ps1
# ssh -i /Users/jkoshita/.ssh/linksys.lan -L 18080:localhost:80 root@linksys.lan

New-Alias -Name windows-1.lan -Value C:\Users\jkoshita\.ssh\login\windows-1.ps1
# ssh -i /Users/jkoshita/.ssh/windows-1.lan -L 34000:localhost:4000 -D 8080 jkoshita@jkoshita.duckdns.org

New-Alias -Name windows-1.lan_macos -Value C:\Users\jkoshita\.ssh\login\windows-1.lan_macos.ps1
# ssh -i /Users/jkoshita/.ssh/windows-1.lan -L 24000:localhost:24000 jkoshita@jkoshita.duckdns.org

New-Alias -Name windows-2.lan -Value C:\Users\jkoshita\.ssh\login\windows-2.ps1
# ssh -i /Users/jkoshita/.ssh/windows-2.lan -L 14000:localhost:4000 jkoshita@windows-2.lan

New-Alias -Name macos.lan -Value C:\Users\jkoshita\.ssh\login\macos.ps1
# ssh -i /Users/jkoshita/.ssh/macos.lan -L 24000:localhost:4000 jkoshita@macos.lan

New-Alias -Name raspberrypi.lan -Value C:\Users\jkoshita\.ssh\login\raspberrypi.ps1
# ssh -i /Users/jkoshita/.ssh/raspberrypi.lan -L 5900:localhost:5900 jkoshita@raspberrypi.lan

New-Alias -Name proxmox.lan -Value C:\Users\jkoshita\.ssh\login\proxmox.ps1
# ssh -i /Users/jkoshita/.ssh/proxmox.lan -L 8006:localhost:8006 root@proxmox.lan

New-Alias -Name debian-vm-1.lan -Value C:\Users\jkoshita\.ssh\login\debian-vm-1.ps1
# param($IPAddress)
# if ($null -eq $IPAddress ) {
#     Write-Host "`nRun As Administrator:`nGet-VM -Name debian | Select-Object -ExpandProperty networkadapters | Select-Object -ExpandProperty ipaddresses | Select-Object -First 1`n`ndebian-vm-1.lan -IPAddress <output>`n"
#     exit
# }
# ssh -i /Users/jkoshita/.ssh/debian-vm-1.lan -L 5901:localhost:5901 jkoshita@${IPAddress}

New-Alias -Name debian-vm-2.lan -Value C:\Users\jkoshita\.ssh\login\debian-vm-2.ps1
# param($IPAddress)
# if ($null -eq $IPAddress ) {
#     Write-Host "`nRun As Administrator:`nGet-VM -Name debian | Select-Object -ExpandProperty networkadapters | Select-Object -ExpandProperty ipaddresses | Select-Object -First 1`n`ndebian-vm-2.lan -IPAddress <output>`n"
#     exit
# }
# ssh -i /Users/jkoshita/.ssh/debian-vm-2.lan -L 5901:localhost:5901 jkoshita@${IPAddress}
