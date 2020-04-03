# Scientific Linux to CentOS 7 Migration
Script to transition from Scientific Linux 7 to CentOS 7

To run this migration script, you must be logged in as root. Use of sudo is recommended.

Once you are root, you'll need to install a couple packages assuming they are not already installed:

`yum install wget vim -y` #You can use some other editor such as nano if you prefer.

`vim scilitocent7.sh` #Edit this file to point to your private mirrors. Otherwise ignore this step.

Use ESC then wq! if using vi/vim to save the changes.

Either make the script executible with `chmod +x scilitocent7.sh` then do `./scilitocent7.sh` 
or run it with `bash scilitocent7.sh`

Afterwards, install lsb, screenfetch, or simply run `uname -a` to prove you're now on CentOS 7.

**Note**: If you're running WSL and using this script, be sure to relaunch your terminal after running the script. 

I recommend using [Windows Terminal](https://github.com/microsoft/terminal).

**Credits**: This is an updated version of what's covered in https://wiki.centos.org/HowTos/MigrationGuide. Feel free to give them a PR with this script. All I ask is I get credit for updating the migration steps. 

**License**: According to https://wiki.centos.org/HowTos/MigrationGuide license, use of GPLv2 or later (at user discretion) is required. As a result, I chose to cover this migration script with GPLv3. See the License file for more details.

**Contributing**: If you'd like to contribute to this script, feel free to send a PR. 
I will not be testing if migration to CentOS 8 is possible. 
If you wish to update the migration script to upgrade to CentOS 8, please be sure it is tested on various platforms (cloud, VM, bare metal) before publicly disseminating.
