sudo su [enter password]
cd /
yum install wget vim -y #you can use some other editor such as nano if you prefer
vim http://upgrade.sh 
mkdir TMP
cd TMP
wget http://mirror.centos.org/centos/7.7.1908/os/x86_64/Packages/centos-release-7-7.1908.0.el7.centos.x86_64.rpm
wget http://mirror.centos.org/centos/7.7.1908/os/x86_64/Packages/centos-indexhtml-7-9.el7.centos.noarch.rpm
wget http://mirror.centos.org/centos/7.7.1908/os/x86_64/Packages/yum-3.4.3-163.el7.centos.noarch.rpm
wget http://mirror.centos.org/centos/7.7.1908/os/x86_64/Packages/yum-plugin-fastestmirror-1.1.31-52.el7.noarch.rpm
wget http://mirror.centos.org/centos/7.7.1908/os/x86_64/Packages/centos-logos-70.0.6-3.el7.centos.noarch.rpm
yum remove rhnlib abrt-plugin-bugzilla redhat-release-notes* -y
rpm -e --nodeps sl-bookmarks SL_desktop_tweaks sl-indexhtml sl-release sl-release-notes yum-conf-sl6x
rpm -Uvh --force *.rpm
cd ..
rm -rf TMP
rm -f /etc/yum.repos.d/sl.repo /etc/yum.repos.d/sl-other.repo
cd /etc
etckeeper commit
yum clean all
yum upgrade

ESC
wq!
bash http://upgrade.sh
Exit terminal and relaunch
yum install lsb
lsb_release -a *proves you're running CentOS*
