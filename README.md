# ScientificLinuxtoCentOSTransition
Script to transition from Scientific Linux 7 to CentOS 7

To run this migration script, you must be logged in as root. Use of sudo is recommended.

Once you are root, you'll need to install a couple packages assuming they are not already installed:

`yum install wget vim -y` #You can use some other editor such as nano if you prefer.

`vim scilitocent7.sh` #Edit this file to point to your private mirrors. Otherwise ignore this step.

Use ESC then wq! if using vi/vim to save the changes.

Either make the script executible with `chmod +x scilitocent7.sh` then do `./scilitocent7.sh` 
or run it with `bash scilitocent7.sh`

Afterwards, install lsb, screenfetch, or simply run uname -a to prove you're now on CentOS 7.

Note: If you're running WSL and using this script, be sure to relaunch your terminal after running the script. 

I recommend using [Windows Terminal](https://github.com/microsoft/terminal).
