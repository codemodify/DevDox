# ![](https://fonts.gstatic.com/s/i/materialicons/bookmarks/v4/24px.svg) DevDox
#### Swiss-Knife of engineering dox/shortcuts needed for daily life

# ![](https://fonts.gstatic.com/s/i/materialicons/bookmarks/v4/24px.svg) Runs On

&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;
<nobr>
<span><img src="https://img.icons8.com/ios-filled/50/000000/linux.png" width="30" /></span>
<span><img src="https://img.icons8.com/ios-filled/50/000000/raspberry-pi.png" width="30" /></span>
<span><img src="https://img.icons8.com/ios-filled/50/000000/mac-os.png" width="30" /></span>
<span><img src="https://img.icons8.com/ios-filled/50/000000/windows-logo.png" width="30" /></span>
</nobr>

# ![](https://fonts.gstatic.com/s/i/materialicons/bookmarks/v4/24px.svg) SDLC
- Debug using VSCode as `root`
	- `sudo dlv debug --headless --listen=:2345 --log --api-version=2 -- ANY-ARGS-HERE`
	- Attach to debugger using
		```json
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

- Test on other platforms
	- `export VAGRANT_VAGRANTFILE=.helper-files/Vagrantfile`
	- `export VAGRANT_DOTFILE_PATH=.helper-files/.vagrant`
	- `vagrant up windows` (see ./.helper-files/Vagrantfile for more platforms)
	- `vagrant ssh windows` <- do the testing
	- `vagrant halt windows` <- power off the VM
	- `vagrant destroy windows -f` <- destroy the VM

- Install Go
	- windows
		- `cd \Users\vagrant\Downloads`
		-
		- Busybox for `ls`, `vi`, `more`, `grep`, `find` and such
			- `curl -O https://frippery.org/files/busybox/busybox64.exe`
			- `mkdir \busybox`
			- `busybox64.exe --install \busybox`
			- `setx path "%path%;\busybox"`
			- OR
			- `\Users\vagrant\Downloads\busybox64.exe sh` to have the `Ctrl + L`
		-
		- `curl -O https://dl.google.com/go/go1.13.7.windows-amd64.msi`
		- `curl -Lk -o firefox.msi https://download.mozilla.org/?product=firefox-msi-latest-ssl&os=win64&lang=en-US`
		- `curl -Lk -o vscode-setup.exe https://aka.ms/win32-x64-user-stable`
		- `msiexec /i go1.13.7.windows-amd64.msi /quiet /qn /norestart /log install.log`
		- `msiexec /i firefox.msi /quiet /qn /norestart /log install.log`
		- `vscode-setup.exe /VERYSILENT /MERGETASKS=!runcode`
		- `choco install git -params '"/GitOnlyOnPath"'`
		- `shutdown -s -t 0`
		-
		- `vagrant up windows && vagrant ssh windows`
		- `cd /vagrant/Service/tests`
		- `sc query | more` <- pick a service, for example `Spooler`
		- `vi sample-01_test.go` <- set the service name from above to test with
		- `go test -run Sample01_Status`
		- `sc stop Spooler`
		- `go test -run Sample01_Status`
		- `sc start Spooler`
		- `go test -run Sample01_Status`
