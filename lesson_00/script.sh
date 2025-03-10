lsb_release -a

echo "------------"
cat /etc/passwd | grep bash

echo "------------"
#sudo netstat -tunlp
sudo nmap -n -PN -sT -sU -p- localhost
