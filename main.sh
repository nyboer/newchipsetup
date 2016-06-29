#Copy your key and scripts to C.H.I.P.’s root directory with scp:
#   scp ~/.ssh/id_rsa.pub keyset.sh rename.sh chip@chip.local:~/
#   ssh chip@chip.local
# then run 
#   ./rename.sh <newname> and ./keyset.sh on CHIP

# call this with an argument for the new name

./keyset.sh

echo "What's C.H.I.P's new name?"
read new
OLD=$(hostname)
sudo sed -i "s/${OLD}/${new}/g" /etc/hostname
sudo sed -i "s/${OLD}/${new}/g" /etc/hosts
echo "New name for chip is ${new}"

read -p "Do you want a new password? [y,n]" ans
case $ans in  
  y|Y) passwd ;; 
  n|N) echo " no" ;; 
  *) echo " ok, assuming no" ;; 
esac

read -p "Do you want to install the dev packages? [y,n]" ans
case $ans in  
  y|Y) ./dev.sh ;; 
  n|N) echo " no" ;; 
  *) echo "ok, assuming no" ;; 
esac

read  -p "Do you want to add AFP services? [y,n]" ans
case $ans in  
  y|Y) ./addafp.sh ;; 
  n|N) echo " no" ;; 
  *) echo " ok, assuming no" ;; 
esac

read  -p "Do you want to cleanup and delete all these scripts? [y,n]" ans
case $ans in  
  y|Y) ./cleanup.sh ;; 
  n|N) echo " no" ;; 
  *) echo " ok, assuming no" ;; 
esac
