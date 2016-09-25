echo "tool"
	sudo apt-get update     
    sudo apt-get install -y wget
    sudo apt-get install -y curl
    sudo apt-get install -y vim
    sudo apt-get install -y git    
    sudo apt-get install -y build-essential
    sudo apt-get install -y unzip  

echo "intsall java 8"
    cd /opt
    sudo wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.tar.gz"
    sudo tar -xzvf jdk-8u45-linux-x64.tar.gz
    sudo rm -rf jdk-8u45-linux-x64.tar.gz

echo "java enviroment"
	export JAVA_HOME=/opt/jdk1.8.0_45/
	export JDK_HOME=/opt/jdk1.8.0_45/
	export JRE_HOME=/opt/jdk1.8.0_45/jre

echo "install activeMQ"
    URL="http://www.apache.org/dyn/closer.cgi?filename=/activemq/5.14.0/apache-activemq-5.14.0-bin.tar.gz&action=download"
    wget -c "$URL" -O /tmp/activemq.tar.gz
    tar zxvf /tmp/activemq.tar.gz -C /tmp
	  rm /tmp/activemq.tar.gz
    sudo mv /tmp/apache-activemq-5.14.0 /opt/ips/activemq
    sudo ln -s /opt/ips/activemq /opt/
    sudo chown vagrant.vagrant -Rf /opt/ips/activemq
    echo "export PATH=\\$PATH:/opt/ips/activemq/bin" | sudo tee -a /etc/profile.d/activemq.sh
    /opt/ips/activemq/apache-activemq-5.14.0/bin/activemq setup $HOME/.activemq
    /opt/ips/activemq/apache-activemq-5.14.0/bin/activemq start

echo "intsall postgres"
	apt-get -y install postgresql postgresql-contrib

echo "install gradle"
	sudo wget https://services.gradle.org/distributions/gradle-2.14-bin.zip
    sudo unzip gradle-2.14-bin.zip -d /opt/
    sudo rm -rf gradle-2.14-bin.zip 

echo "java enviroment"
	export GRADLE_HOME=/opt/gradle-2.14
	