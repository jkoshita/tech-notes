New-Alias -Name linksys.lan -Value C:\Users\jkoshita\.ssh\login\linksys.ps1
# ssh -i /Users/jkoshita/.ssh/linksys.lan -L 18080:localhost:80 root@192.168.1.1

New-Alias -Name linksys-relay1.lan -Value C:\Users\jkoshita\.ssh\login\linksys-relay1.ps1
# ssh -i /Users/jkoshita/.ssh/linksys.lan -L 8080:localhost:80 root@192.168.1.100

New-Alias -Name linksys-relay2.lan -Value C:\Users\jkoshita\.ssh\login\linksys-relay2.ps1
# ssh -i /Users/jkoshita/.ssh/linksys.lan -L 8080:localhost:80 root@192.168.1.101

New-Alias -Name windows-1.lan -Value C:\Users\jkoshita\.ssh\login\windows-1.ps1
# ssh -i /Users/jkoshita/.ssh/windows-1.lan -L 40001:localhost:4000 -D 8080 jkoshita@jkoshita.dyndns.org

New-Alias -Name windows-1.lan_macos -Value C:\Users\jkoshita\.ssh\login\windows-1.lan_macos.ps1
# ssh -i /Users/jkoshita/.ssh/windows-1.lan -L 40002:localhost:40002 jkoshita@jkoshita.dyndns.org

New-Alias -Name windows-2.lan -Value C:\Users\jkoshita\.ssh\login\windows-2.ps1
# ssh -i /Users/jkoshita/.ssh/windows-2.lan -L 40003:localhost:4000 jkoshita@192.168.1.102

New-Alias -Name macos.lan -Value C:\Users\jkoshita\.ssh\login\macos.ps1
# ssh -i /Users/jkoshita/.ssh/macos.lan -L 40002:localhost:4000 jkoshita@192.168.1.103

New-Alias -Name raspberrypi.lan -Value C:\Users\jkoshita\.ssh\login\raspberrypi.ps1
# ssh -i /Users/jkoshita/.ssh/raspberrypi.lan -L 5900:localhost:5900 jkoshita@192.168.1.104
