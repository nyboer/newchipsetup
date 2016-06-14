# Setting up a fresh C.H.I.P

When I setup a Next Thing CHIP computer with a new OS, I want to be able to easily ssh into it. This means setting up a key for password-less login and giving C.H.I.P. a new hostname. I've done this so many times, I finally setup a script and some files.
This is primarily for working with C.H.I.P. from an OS X machine, though most of this stuff should work nicely with a linux computer, too.

## Get C.H.I.P. on the network
First, you'll need to connect C.H.I.P. to your Mac with a USB micro cable so you can connect via serial (you could also connect C.H.I.P. to a monitor and use the desktop with a mouse and keyboard):

```
screen/dev/tty.us #hit tab for auto complete
```
on linux, it will be something like
```
screen/dev/tty.ACM0 115200
```
Now, setup the network from command line:
```
nmcli d wifi connect (networkname) password (password)
```
You might want to get the IP address at this point:
```
ip a
```
but for the most part we're going to assume only one C.H.I.P. is on your network and it's reasonable to `ssh` to `chip@chip.local`.

## Make a Key on your Mac and Move Files to C.H.I.P.

Go back to the OS X terminal and make a key and copy it, along with all the scripts in this repo, to C.H.I.P., using the `keymake` script:
```
./keymake.sh
```
You'll be asked for C.H.I.P.'s password. If your computer can't find "chip.local" on the network, you can call the script with an argument with the IP address (or another name), such as `./keymake.sh 192.168.1.34`.

## Now on C.H.I.P.

Login to C.H.I.P. (or use a monitor, mouse, and keyboard) :
```
ssh chip@chip.local
```
where you can set copy the key to the right place by running this script on C.H.I.P.:
```
./keyset.sh
```
Once the key is setup, you can rename "chip" with this command, where you add your new name as an argument:
```
./rename.sh (newname)
```
(or use this script where it prompts you for a new name:`./rename_input.sh` )

Finally, you can add afp services running this script:
```
./addafp.sh
```
If you want to clean up your home directory on C.H.I.P., run this command to get rid of all these scripts:
```
./cleanup.sh
```

