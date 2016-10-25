 sudo add-apt-repository "deb http://apt.puredata.info/releases `lsb_release -c | awk '{print $2}'` main"
 sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 9f0fe587374bbe81
 sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key D63D3D09C39F5EEB
 sudo apt-get update
 sudo apt-get install puredata