# Setting up a fresh C.H.I.P

When I setup a CHIP with a new OS, I want to be able to easily ssh into it. This means setting up a key for password-less login and giving CHIP a new hostname. I've done this so many times, I finally setup a script and some files.
This is primarily for working with CHIP from an OS X machine, though most of this stuff should work nicely with a linux computer, too.

## Get CHIP on the network
First, you'll need to connect CHIP to your Mac with a USB micro cable so you can connect via serial:

```
screen/dev/tty.us #hit tab for auto complete
```
setup the network from command line:
```
nmcli d wifi connect (network name) password (pass word)
```
You might want to get the IP address at this point:
```
ip a
```
but for the most part we're going to assume only one CHIP is on your network and it's reasonable to `ssh` to `chip@chip.local`.

## Make a Key on your Mac and Move Files to CHIP

Go back to the OS X terminal and make a key and copy it, along with all the scripts in this repo, to CHIP:
```
./keymake.sh
```
You'll be asked for CHIP's password. If your computer can't find "chip.local" on the network, you can call the script with an argument with the IP address (or another name), such as `./keymake.sh 192.168.1.34`.

## Now on CHIP

Login to C.H.I.P.:
```
ssh chip@chip.local
```
where you can set copy the key to the right place by running this script on CHIP:
```
./keyset.sh
```
Once the key is setup, you can rename "chip" with this command, where you add your new name as an argument:
```
./rename.sh (new name)
```
(or use this script where it prompts you for a new name:`./rename_input.sh` )

Finally, you can add afp services running this script:
```
./addafp.sh
```
If you want to clean up your home directory on CHIP, run this command to get rid of all these scripts:
```
rm	afpdservice.xml	keyset.sh	rename_input.sh addafp.sh	rename.sh
```

