#run on mac terminal
c=${1:-chip.local}
ssh-keygen -t rsa
scp ~/.ssh/id_rsa.pub keyset.sh rename.sh afpdservice.xml rename_input.sh addafp.sh cleanup.sh dev.sh main.sh puredata.sh chip@$c:~/
ssh chip@$c