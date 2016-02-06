sudo apt-get update
sudo apt-get install build-essential
sudo 
# Sublime setup
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

# Rust setup
sudo apt-get install curl
cd ~/Desktop
mkdir rust_stash

curl -sSf https://static.rust-lang.org/rustup.sh | sh -s -- --channel=nightly

# Chrome setup
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

# Java Setup
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
sudo update-alternatives --config java

# XDM setup
sudo add-apt-repository ppa:noobslab/apps
sudo apt-get update
sudo apt-get install xdman

# Vim setup
sudo apt-get install vim

#Hack font setup
DEST_DIR=~/.fonts/hack_typeface
mkdir -p $DEST_DIR

# Check if you have unzip, if not install
which unzip >/dev/null || (echo "INFO: I need to install unzip"; sudo apt-get install unzip)
# Download font 
wget --directory-prefix $DEST_DIR https://github.com/chrissimpkins/Hack/releases/download/v2.010/Hack-v2_010-otf.zip
# Decompress
unzip $DEST_DIR/Hack-*.zip -d $DEST_DIR
# Clean zip file
rm $DEST_DIR/Hack-*.zip 
# Rebuild font information
sudo fc-cache -f -v

# Wine Setup
sudo add-apt-repository ppa:ubuntu-wine/ppa
sudo apt-get update
sudo apt-get install wine1.7

# Network Notifcation setup
sudo add-apt-repository ppa:fixnix/netspeed
sudo apt-get update
sudo apt-get install indicator-netspeed-unity

# i3 Setup
sudo apt-get install i3

# Setup zsh
sudo apt-get install zsh
wget –no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O rollout.sh | sh
sudo chsh -s /bin/zsh
