#run on mac terminal

ssh-keygen -t rsa
scp ~/.ssh/id_rsa.pub keyset.sh rename.sh afpdservice.xml rename_input.sh chip@chip.local:~/