# run this as
#    ./rename_input.sh
# and it will prompt you for a new name for your CHIP

echo "What's C.H.I.P's new name?"
read new
OLD=$(hostname)
sudo sed -i "s/${OLD}/${new}/g" /etc/hostname
sudo sed -i "s/${OLD}/${new}/g" /etc/hosts