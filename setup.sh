sudo apt-get install -y software-properties-common
sudo apt-get update
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
sudo apt-get install oracle-java8-set-default
cat >> /etc/environment <<EOL
JAVA_HOME=/usr/lib/jvm/java-8-oracle
JRE_HOME=/usr/lib/jvm/java-8-oracle/jre
EOL
wget https://sourceforge.net/projects/openofficeorg.mirror/files/4.1.4/binaries/en-US/Apache_OpenOffice_4.1.4_Linux_x86-64_install-deb_en-US.tar.gz
tar xzf Apache_OpenOffice_4.1.4_Linux_x86-64_install-deb_en-US.tar.gz
cd en-US/DEBS/
sudo dpkg -i *.deb
cd desktop-integration/
sudo dpkg -i openoffice4.1-debian-menus*.deb

