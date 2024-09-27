New-Alias -Name linksys.lan -Value C:\Users\jkoshita\.ssh\login\linksys.ps1
# ssh -i /Users/jkoshita/.ssh/linksys.lan -L 18080:localhost:80 root@linksys.lan

New-Alias -Name windows-1.lan -Value C:\Users\jkoshita\.ssh\login\windows-1.ps1
# ssh -i /Users/jkoshita/.ssh/windows-1.lan -L 40001:localhost:4000 -D 8080 jkoshita@jkoshita.dyndns.org

New-Alias -Name windows-1.lan_macos -Value C:\Users\jkoshita\.ssh\login\windows-1.lan_macos.ps1
# ssh -i /Users/jkoshita/.ssh/windows-1.lan -L 40002:localhost:40002 jkoshita@jkoshita.dyndns.org

New-Alias -Name windows-2.lan -Value C:\Users\jkoshita\.ssh\login\windows-2.ps1
# ssh -i /Users/jkoshita/.ssh/windows-2.lan -L 40003:localhost:4000 jkoshita@windows-2.lan

New-Alias -Name macos.lan -Value C:\Users\jkoshita\.ssh\login\macos.ps1
# ssh -i /Users/jkoshita/.ssh/macos.lan -L 40002:localhost:4000 jkoshita@macos.lan

New-Alias -Name raspberrypi.lan -Value C:\Users\jkoshita\.ssh\login\raspberrypi.ps1
# ssh -i /Users/jkoshita/.ssh/raspberrypi.lan -L 5900:localhost:5900 jkoshita@raspberrypi.lan

New-Alias -Name proxmox.lan -Value C:\Users\jkoshita\.ssh\login\proxmox.ps1
# ssh -i /Users/jkoshita/.ssh/proxmox.lan root@192.168.1.151

New-Alias -Name debian-fs.lan -Value C:\Users\jkoshita\.ssh\login\debian-fs.ps1
# ssh -i /Users/jkoshita/.ssh/debian-fs.lan jkoshita@debian-fs.lan

New-Alias -Name debian-web.lan -Value C:\Users\jkoshita\.ssh\login\debian-web.ps1
# ssh -i /Users/jkoshita/.ssh/debian-web.lan jkoshita@debian-web.lan

New-Alias -Name debian-db.lan -Value C:\Users\jkoshita\.ssh\login\debian-db.ps1
# ssh -i /Users/jkoshita/.ssh/debian-db.lan jkoshita@debian-db.lan

New-Alias -Name debian-vm -Value C:\Users\jkoshita\.ssh\login\debian-vm.ps1
# ssh -i /Users/jkoshita/.ssh/debian-vm jkoshita@debian-vm
