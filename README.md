# Setting up a fresh C.H.I.P

When I setup a CHIP with a new OS, I want to be able to easily ssh into it. This means setting up a key for password-less login and giving CHIP a new name. I've done this so many times, I finally setup a script and some files.
This is primarily for working with CHIP from an OS X machine. 

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
You'll be asked for CHIP's password.

## Now on CHIP

Login to C.H.I.P.:
```
ssh chip@chip.local
```
where you can set up the key with
```
./keyset.sh
```
and finally rename chip with either this command, where you add your new name as an argument:
```
./rename.sh (new name)
```
or use this one where it prompts you for a new name:
```
./rename_input.sh
```


