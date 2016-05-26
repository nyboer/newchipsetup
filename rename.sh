#Copy your key and scripts to C.H.I.P.’s root directory with scp:
#   scp ~/.ssh/id_rsa.pub keyset.sh rename.sh chip@chip.local:~/
#   ssh chip@chip.local
# then run 
#   ./rename.sh <newname> and ./keyset.sh on CHIP

# call this with an argument for the new name or two args for newname and oldname

new=${1:-toto}
old=${2:-chip}
echo $new
echo $old
sudo sed -i "s/${old}/${new}/g" /etc/hostname
sudo sed -i "s/${old}/${new}/g" /etc/hosts
