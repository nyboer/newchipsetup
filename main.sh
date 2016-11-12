#Copy your key and scripts to C.H.I.P.’s root directory with scp:
#   scp ~/.ssh/id_rsa.pub keyset.sh rename.sh chip@chip.local:~/
#   ssh chip@chip.local
# then run 
#   ./rename.sh <newname> and ./keyset.sh on CHIP

# call this with an argument for the new name

echo "adding key to CHIP"
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

DEV="n"
PD="n"
AFP="n"
CLEAN="n"
LOC="n"

echo "Here's some questions. After you answer, I'll get to work:"

read -p "Do you want to install the dev packages? [y,n]" DEV
echo $DEV
read  -p "Do you want to install puredata (about 100MB)? [y,n]" PD
echo $PD
read  -p "Do you want to add AFP services? [y,n]" AFP
echo $AFT
read  -p "Do you want to cleanup and delete all these scripts? [y,n]" CLEAN
echo $CLEAN
read  -p "Do you want to setup the US locale? [y,n]" LOC
echo $LOC


echo "Now the work begins!"

case $DEV in  
  y|Y) ./dev.sh ;; 
  n|N) echo " no dev tools" ;; 
  *) echo "ok, assuming no" ;; 
esac

case $key in  
  y|Y) ./setupkeys.sh ;; 
  n|N) echo " no key setup" ;; 
  *) echo "ok, assuming no" ;; 
esac



case $PD in  
  y|Y) ./puredata.sh ;; 
  n|N) echo " no puredata " ;; 
  *) echo " ok, assuming no" ;; 
esac

case $AFP in  
  y|Y) ./addafp.sh ;; 
  n|N) echo " no afp services" ;; 
  *) echo " ok, assuming no" ;; 
esac

case $CLEAN in  
  y|Y) ./cleanup.sh ;; 
  n|N) echo " no cleanup " ;; 
  *) echo " ok, assuming no" ;; 
esac

case $LOC in  
  y|Y) sudo locale-gen --purge en_US.UTF-8 ;; 
  n|N) echo " no local gen - just run sudo locale-gen on your own" ;; 
  *) echo " ok, assuming no" ;; 
esac


echo "Congratulations, your C.H.I.P. is set up to do awesome stuff!"
