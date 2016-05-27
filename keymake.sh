#run on mac terminal
c=${1:-chip}
ssh-keygen -t rsa
scp ~/.ssh/id_rsa.pub keyset.sh rename.sh afpdservice.xml rename_input.sh chip@$c.local:~/