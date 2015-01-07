VBackup
==========

Easily backup your ENTIRE or PARTS of your Linux server.

Installtion and first backup!
==========
First things, first. Download the Backup.sh which you do so by running this command:

``wget https://raw.githubusercontent.com/vladreinis/VBackup/master/backup.sh``

To begin first backup <b>configure</b> the directories using Vim or Nano editor and type these commands:

``chmod +x backup.sh``

`` ./backup.sh ``

From there the setup will walk you through the backup.

Recovering!
==========
So you want to load your vps with the backup you've just taken, pretty simple. (Make sure you're logged in as root)

Be sure you're the correct directory and the following command:

`` tar -xzf ---.tar ``






