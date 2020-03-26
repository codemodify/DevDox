# ![](https://fonts.gstatic.com/s/i/materialicons/bookmarks/v4/24px.svg) DevDox
#### Swiss-Knife of engineering dox/shortcuts needed for daily life

# ![](https://fonts.gstatic.com/s/i/materialicons/bookmarks/v4/24px.svg) Runs On

&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;
<nobr>
<span><img src="https://img.icons8.com/ios-filled/50/000000/mac-os.png" width="30" /></span>
<span><img src="https://img.icons8.com/ios-filled/50/000000/windows-logo.png" width="30" /></span>
<span><img src="https://img.icons8.com/ios-filled/50/000000/linux.png" width="30" /></span>
<span><img src="https://img.icons8.com/ios-filled/50/000000/raspberry-pi.png" width="30" /></span>
</nobr>

# ![](https://fonts.gstatic.com/s/i/materialicons/label_important/v4/24px.svg) Minimum System Requirements
### GoLang is currently supported only on x64 based processors
- FreeBSD 10.3 or later
  - amd64, 386
  > Debian GNU/kFreeBSD not supported
- Linux 2.6.23 or later with glibc
  - amd64, 386, arm, arm64, s390x, ppc64le
  > CentOS/RHEL 5.x not supported. Install from source for other libc
- macOS 10.10 or later
  - amd64
  > use the clang or `gss` that comes with Xcode for `cgo` support
- Windows 7, Server 2008R2 or later
  - amd64, 386
  > use MinGW (`386`) or MinGW-W64 (`amd64`) gcc


# ![](https://fonts.gstatic.com/s/i/materialicons/label_important/v4/24px.svg) MacOS ![](https://img.icons8.com/ios-filled/50/000000/mac-os.png)


## Install Go on MacOS

- Download Go on MacOS
	- To download the latest Go release visit https://golang.org/dl/<br> 
		  You will see the download link for Apple macOS.<br>
		  The current version of Go support macOS 10.14 or later versions with 64-bit support only.

        - Alternative: You can download Go using the curl command line.
		- `curl -o golang.pkg https://dl.google.com/go/go1.14.1.darwin-amd64.pkg`

- Install Go on MacOS
	- You have downloaded the Go package on your macOS system.<br>
	  To install it simply double click on the downloaded file to start the installation wizard.
        - Alternative: Command-line users can execute the below command to start the installation.
	    - `sudo open golang.pkg`

- Test Go Version
    - Finally, you have successfully installed and configured go language on your system.<br>
	  First, use the following command to check the installed Go version in command line.
	  - `go version`

- Install Dependency SystemKit
    - You can download and install `SystemKit` Dependency using bellow command line.
	  - `go get github.com/codemodify/SystemKit`
	  - Alternative: Download archive from link: https://github.com/codemodify/SystemKit.<br>
         	  Extract in ` ~/Users/macbook/go/src/`
---------------------------------------------------------------------

# ![](https://fonts.gstatic.com/s/i/materialicons/label_important/v4/24px.svg) Windows ![](https://img.icons8.com/ios-filled/50/000000/windows-logo.png)

## Install Go on Windows

- Download Go on Windows
	- To download the latest Go release visit https://golang.org/dl/<br> 
		  You will see the download link for Microsoft Windows.<br>
		  The current version of Go support Windows 7 or later, Intel 64-bit processor or later versions with 64-bit support only

- Install Go on Windows
  - Run the installer and accept all default prompts
  - Create a folder called `Projects` in your home folder
  - In the start menu search for env then select "Edit environment variables for your account"
  - Add a new variable called `GOPATH` with a value of `%USERPROFILE%\Projects`
  - Edit the PATH variable and add this to whatever is already there ;   `%GOPATH%\bin`
  - In the start menu search for `cmd` then run it
  - In the `cmd` window run go `env`. You should see the `GOPATH` variable you set
  - Close that `cmd` window

- Test Go Version
  - Open a cmd window and run `go get github.com/golang/lint/golint`
  - After that is done run `golint -h` and see if it works
  - It should give you the help message for a program called `golint` 
  - If this does not work then you've likely misconfigure the `PATH` or `GOPATH` variables so go back and check those.

- Install Dependency SystemKit
    - You can download and install `SystemKit` Dependency using bellow command line
	  - `go get github.com/codemodify/SystemKit`
	- Alternative: Download archive from link: https://github.com/codemodify/SystemKit.<br>
      - Extract in `%USERPROFILE%\Projects`
    ---------------------------------------------------------------------
