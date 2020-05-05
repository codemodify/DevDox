# ![](https://fonts.gstatic.com/s/i/materialicons/bookmarks/v4/24px.svg) More Links
- Mac
	- https://wiki.archlinux.org/index.php/VirtualBox/Tips_and_tricks#Install_MacOS_guest
	- https://app.vagrantup.com/yzgyyang/boxes/macOS-10.14
	- https://techsviewer.com/install-macos-10-14-mojave-virtualbox-windows/
	- https://gist.github.com/WayneBuckhanan/15de1bb8b3fb3bd4f7af
	- https://spin.atomicobject.com/2015/11/17/vagrant-osx
	- https://github.com/AndrewDryga/vagrant-box-osx

- vagrant plugin install vagrant-scp
- vagrant scp <some_local_file_or_dir> [vm_name]:<somewhere_on_the_vm>
- vagrant upload ./temp-build/systemkit-platform-os.darwin.amd64

export VAGRANT_VAGRANTFILE=Vagrantfile-centos
export VAGRANT_VAGRANTFILE=Vagrantfile-macosx
export VAGRANT_VAGRANTFILE=Vagrantfile-ubuntu
export VAGRANT_VAGRANTFILE=Vagrantfile-windows

vagrant ssh
vagrant upload ./temp-build/systemkit-platform-os.darwin.amd64