New-Alias -Name linksys.lan -Value C:\Users\jkoshita\.ssh\login\linksys.ps1
# linksys.ps1: ssh -i /Users/jkoshita/.ssh/linksys.lan -L 18080:localhost:80 root@linksys.lan

New-Alias -Name windows-1.lan -Value C:\Users\jkoshita\.ssh\login\windows-1.ps1
# windows-1.ps1: ssh -i /Users/jkoshita/.ssh/windows-1.lan -L 34000:localhost:4000 -D 8080 jkoshita@jkoshita.duckdns.org

New-Alias -Name windows-1.lan_macos -Value C:\Users\jkoshita\.ssh\login\windows-1.lan_macos.ps1
# windows-1.lan_macos.ps1: ssh -i /Users/jkoshita/.ssh/windows-1.lan -L 24000:localhost:24000 jkoshita@jkoshita.duckdns.org

New-Alias -Name windows-2.lan -Value C:\Users\jkoshita\.ssh\login\windows-2.ps1
# windows-2.ps1: ssh -i /Users/jkoshita/.ssh/windows-2.lan -L 14000:localhost:4000 jkoshita@windows-2.lan

New-Alias -Name macos.lan -Value C:\Users\jkoshita\.ssh\login\macos.ps1
# macos.ps1: ssh -i /Users/jkoshita/.ssh/macos.lan -L 24000:localhost:4000 jkoshita@macos.lan
