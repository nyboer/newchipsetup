read  -p "enter your email address for github" EMAIL
echo $EMAIL
echo "Setting up keys for GitHub. You'll need to enter a unique passphrase for your key - make sure you keep it around!"
ssh-keygen -t rsa -b 4096 -C $EMAIL
ssh-add ~/.ssh/id_rsa
nano ~/.ssh/id_rsa
echo "Now go to https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/ for the rest of the steps"

