# get CHIP on your network
# make a key on your local computer:
#   ssh-keygen -t rsa
# Copy this key and scripts to C.H.I.P.’s root directory with scp:
#   scp ~/.ssh/id_rsa.pub keyset.sh rename.sh rename_input.sh chip@chip.local:~/
# SSH into chip, for example:
#   ssh chip@chip.local
# then run 
#   ./rename.sh <newname> 
# and 
#   ./keyset.sh
# on CHIP
# you can also use 
#   ./rename_input.sh
# which simply prompts you for a name

mkdir .ssh
cat id_rsa.pub >> .ssh/authorized_keys 
rm id_rsa.pub
chmod go-w ~ && chmod 700 ~/.ssh && chmod 600 ~/.ssh/authorized_keys