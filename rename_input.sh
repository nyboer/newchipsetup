# run this as
#    ./rename_input.sh
# and it will prompt you for a new name for your CHIP

echo "What's C.H.I.P's new name?"
read new
sudo sed -i "s/chip/${new}/g" /etc/hostname
sudo sed -i "s/chip/${new}/g" /etc/hosts