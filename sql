
sudo apt-get update
sudo apt-get install --reinstall openjdk-17-jdk
sudo find /usr/lib/jvm/ -name libawt_xawt.so
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH
cd Downloads/
sudo dpkg -i sqldeveloper_23.1.1-346.2114_all.deb 
sqldeveloper
