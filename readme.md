# ![](https://fonts.gstatic.com/s/i/materialiconsoutlined/flare/v4/24px.svg)  Dev Dox
#### Swiss Army Knife of engineering dox/shortcuts for daily life

<div>
<img src="https://img.icons8.com/ios-filled/50/000000/linux.png" width="30" />
<img src="https://img.icons8.com/ios-filled/50/000000/linux.png" width="30" />
<img src="https://img.icons8.com/ios-filled/50/000000/linux.png" width="30" />
<img src="https://img.icons8.com/ios-filled/50/000000/raspberry-pi.png" width="30" />
<img src="https://img.icons8.com/ios-filled/50/000000/raspberry-pi.png" width="30" />
<img src="https://img.icons8.com/ios-filled/50/000000/raspberry-pi.png" width="30" />
</div>

```sh
# Watch open TCP/UDP ports by binaries
watch -c -n 0.1 'echo 0.1 | sudo -S lsof -i -nP | grep -e ".*BINARY-1.*" -e ".*BINARY-2.*" -e ".*BINARY-3.*"'

# Watch folder content
watch -c -n 1 ls /FOLDER/PATH

# Watch for specific values in a log file
watch -c -n 0.1 'tac /LOGFILE/PATH.log | grep "VALUE-TO-LOOK-FOR" | head -n 5'

# Kill a set of processes
sudo killall -9 BINARY-1; sudo killall -9 BINARY-2; sudo killall -9 BINARY-3

# System service in /etc/systemd/system/SERVICE.service
# refresh, enable, start, restart, stop, disable, watch logs
sudo systemctl daemon-reload
sudo systemctl enable  SERVICE
sudo systemctl start   SERVICE
sudo systemctl restart SERVICE
sudo systemctl stop    SERVICE
sudo systemctl disable SERVICE
journalctl -f -u       SERVICE

# Enable SystemD for the user
export XDG_RUNTIME_DIR=/run/user/id -u 297 sudo systemctl restart systemd-logind.service
systemctl --user enable SERVICE

# Download + follow the links in URL + save the file as it is named
curl -LkO https://domain.com/sofisticated-url/file.sample

# Download + follow the links in URL + save the file as custom name
curl -Lk  https://domain.com/sofisticated-url/file.sample -O myfile.sample

# Download + ignore the certificates
curl -LkO https://domain.com/sofisticated-url/file.sample --insecure

# Vagrant
export VAGRANT_VAGRANTFILE=.helper-files/Vagrantfile
export VAGRANT_DOTFILE_PATH=.helper-files/.vagrant
vagrant up windows
vagrant ssh windows
vagrant halt windows       # power off the VM
vagrant destroy windows -f # destroy the VM

# VSCode debug Go lang as root
sudo dlv debug --headless --listen=:2345 --log --api-version=2 -- ANY-ARGS-HERE

# Attach to debugger using
{
	"name": "Attach to SUDO debbugger",
	"type": "go",
	"request": "launch",
	"mode": "remote",
	"program": "${workspaceFolder}/THE-MAIN.go",
	"port": 2345,
	"host": "127.0.0.1",
	"remotePath": "${workspaceFolder}/THE-MAIN.go"
}

```

<div>
<img src="https://img.icons8.com/ios-filled/50/000000/mac-os.png" width="30" />
<img src="https://img.icons8.com/ios-filled/50/000000/mac-os.png" width="30" />
<img src="https://img.icons8.com/ios-filled/50/000000/mac-os.png" width="30" />
</div>

```sh
# System service
sudo launchctl load /Library/LaunchDaemons/SERVICE.plist
sudo launchctl start SERVICE
sudo launchctl stop SERVICE
sudo launchctl unload /Library/LaunchDaemons/SERVICE.plist

# User service
launchctl load ~/Library/LaunchAgents/SERVICE.plist
launchctl start SERVICE
launchctl stop SERVICE
launchctl unload ~/Library/LaunchAgents/SERVICE.plist
launchctl list | grep SERVICE

# Check and for service and watch logs
sudo launchctl list | grep SERVICE
syslog -w


```

<div>
<img src="https://img.icons8.com/ios-filled/50/000000/windows-logo.png" width="30" />
<img src="https://img.icons8.com/ios-filled/50/000000/windows-logo.png" width="30" />
<img src="https://img.icons8.com/ios-filled/50/000000/windows-logo.png" width="30" />
</div>

```sh
# Busybox for `ls`, `vi`, `more`, `grep`, `find`, `watch`, `Ctrl + L` and such
curl -O https://frippery.org/files/busybox/busybox64.exe
busybox64.exe sh

# Install Go lang
curl -O https://dl.google.com/go/go1.13.7.windows-amd64.msi
msiexec /i go1.13.7.windows-amd64.msi /quiet /qn /norestart /log install.log

# Install Firefox
curl -Lk -o firefox.msi https://download.mozilla.org/?product=firefox-msi-latest-ssl&os=win64&lang=en-US
msiexec /i firefox.msi /quiet /qn /norestart /log install.log

# Install VSCode
curl -Lk -o vscode-setup.exe https://aka.ms/win32-x64-user-stable
vscode-setup.exe /VERYSILENT /MERGETASKS=!runcode

# Install git
choco install git -params '"/GitOnlyOnPath"'
shutdown -r -t 0

# Windows Service
sc query | more # list all services
sc queryex type= service state= all | find /i "SERVICE-NAME" # find a specific service
sc stop  SERVICE-NAME
sc start SERVICE-NAME

# List open TCP/UDP ports by binaries
powershell -File github.com/codemodify/DevDox/supporting-files/list-open-ports.ps1

# Kill tasks
taskkill /f /im BINARY-1.exe
taskkill /f /im BINARY-2.exe
taskkill /f /im BINARY-3.exe
```
