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


# Getting Started with `Go`
## Install GoLang on MacOSX
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

## Install GoLang on Windows

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
## Install GoLang on Linux
- Download Go on Linux
	- Go to https://golang.org/dl/ and download the latest version (i.e 1.14.1) of GoLang in an archive file as follows:
  ```
  $ cd ~/Downloads
  $ wget -c https://storage.googleapis.com/golang/go1.14.1.linux-amd64.tar.gz
  ```

- Next, check the integrity of the tarball by `verifying the SHA256 checksum of the archive file` using the `shasum` command as below, where the flag <kbd>-a</kbd> is used to specify the algorithm to be used:

```
$ shasum -a 256 go1.14.1.linux-amd64.tar.gz

ead40e884ad4d6512bcf7b3c7420dd7fa4a96140  go1.14.1.linux-amd64.tar.gz
```
#### `Important`: To show that the contents of the downloaded archive file are the exact copy provided on the GoLang website, the 256-bit hash value generated from the command above as seen in the output should be the same as that provided along with the download link.

   - If that is the case, proceed to the next step, otherwise download a new tarball and run the check again
---
### Extract the `tar archive` files into `/usr/local` directory using the command below.
```
$ sudo tar -C /usr/local -xvzf go1.14.1.linux-amd64.tar.gz
```
Where, <kbd>-C</kbd> specifies the destination directory

___

## Configuring GoLang Environment in Linux
  - First, setup your Go workspace by creating a directory `~/go_projects` which is the root of your workspace. The workspace is made of three directories namely:
    - <kbd>bin</kbd> which will contain Go executable binaries.
    - <kbd>src</kbd> which will store your source files and
    - <kbd>pkg</kbd> which will store package objects
  - Therefore create the above directory tree as follows:
```
$ mkdir -p ~/go_projects/{bin,src,pkg}
$ cd ~/go_projects
$ ls
```
--- 
### Now it’s time to execute `Go` like the rest of Linux programs without specifying its absolute path, its installation directory must be stored as one of the values of `$PATH environment variable`.

- Now, add `/usr/local/go/bin` to the <kbd>PATH</kbd> environment variable by inserting the line below in your /etc/profile file for a system-wide installation or $HOME/.profile or $HOME./bash_profile for user specific installation:

  - Using your preferred editor, open the appropriate user profile file as per your distribution and add the line below, save the file and exit:
  ```
  export  PATH=$PATH:/usr/local/go/bin
  ```
- Then, set the values of <kbd>GOPATH</kbd> and <kbd>GOBIN</kbd> Go environment variables in your user profile file (`~/.profile` or <kbd>~/bash_profile</kbd>) to point to your workspace directory.
```
export GOPATH="$HOME/go_projects"
export GOBIN="$GOPATH/bin"
```
### <kbd>`Note:`</KBD> If you installed GoLang in a custom directory other than the default (`/usr/local/`), you must specify that directory as the value of `GOROOT` variable.
- For instance, if you have installed `GoLang` in home directory, add the lines below to your `$HOME/.profile` or `$HOME/.bash_profile` file.
```
export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin
```
---------------------------------------------------------------------
### The final step under this section is to effect the changes made to the user profile in the current bash session like so:
```
$ source ~/.bash_profile
OR
$ source ~/.profile
```
---
## Install Dependency `SystemKit`


  - You can download and install `SystemKit` Dependency using bellow command line.
	  - `go get github.com/codemodify/SystemKit`
	  - Alternative: Download archive from link: https://github.com/codemodify/SystemKit.<br>
         	  Extract in `PATH=$PATH:$GOROOT/src/`
----------------------------------------------------