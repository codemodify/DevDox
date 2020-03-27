
# These guides help you setting up Visual Studio Code, Go, Git, SSH keys and GitHub access on Mac OS X.
##  Getting Started with Golang - Mac OS X
### Install Go (without brew)
___
 - Download Go from:
   - http://golang.org/dl/
   - Install the .PKG package.
   - Uninstall any previous install.
   - If a previous version was already installed,        run:<br>
>`sudo rm -rf /usr/local/go`
___
## Install Go (with brew)
>`brew install go`
___
## Create your GOPATH
- The GOPATH is where all your Go code will live.<p>Run:
>`mkdir ~/go`
___
## Install Git
 - Download Go from:
   - http://git-scm.com/downloads
___
## Install Go tools
- Open a NEW Terminal (with new env vars), paste this in to install those sweet tools:<br>

```
if in zsh, do also: export PATH=/usr/local/go/bin:$PATH
export GOPATH=$HOME/go
go get -u github.com/nsf/gocode/...
go get -u github.com/rogpeppe/godef/...
go get -u golang.org/x/tools/cmd/...
```
You might see an error with `godoc`. Ignore it.
<x>
___
## Install VisualStudio Code
VisualStudio Code has one of the best support for coding in Go. It has excellent plugins and works across platforms.

Download from:
   - http://git-scm.com/downloads

<br>After installation, do:

Hit <kbd>Cmd</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> and type in `Install exte`
  * Hit `Enter` to accept `Install extensions`

  * From the list, select `Go`, and click `Install`. Wait and then click `Enable`.
___
## Setup `Go` environment variables

 - In VS Code, open `~/.profile`.<br>
 >If you use `zsh`, open  ` ~/.zshrc` instead.
 - Tweak your profile file to add these lines and save the file:
```
export GOPATH=$HOME/go
export PATH=$HOME/go/bin:$PATH
```
___
## Setup of global `Git` configuration
Open the file `~/.gitconfig` in VS Code.<br>
- Make sure similar lines are in there:
```
[user]
name = Your Name
email = yourmail@example.com
```
 - Save & exit.
 ---
 ## Setup `GitHub` authentication
 Generate a new key<br>
Run:
>`cat $HOME/.ssh/id_rsa.pub`<br>

Accept the default file name (hit ENTER). This key gives access to all your github repos. Secure it with a password when asked.
 - This password never leaves your computer, the key shouldn't either, but if lost, it is encrypted with this password.

### Register your key on `GitHub`
Run:<br>
>`cat $HOME/.ssh/id_rsa.pub`

- Go to: https://github.com/settings/ssh

Click "Add SSH key" (at the top right of the box).

Copy the `ssh-rsa .......` in the `Key` input field. Don't fill in `Title` (it will use the key comment).

GitHub will ask you to confirm with your GitHub password.
____
## Check out your first project, get ready to run and build
In a terminal, run:
```
mkdir -p $GOPATH/src/github.com/abourget
cd $GOPATH/src/github.com/abourget
git clone git@github.com:abourget/getting-started-with-golang

cd getting-started-with-golang

go install -v
getting-started-with-golang
```
Modify main.go in this repository and rerun go install -v to compile and getting-started-with-golang to re-execute the program.










