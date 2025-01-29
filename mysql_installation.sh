sudo apt-get update -y
sudo apt-get install -y mysql-server
sudo systemctl enable --now mysql
sudo systemctl status mysql 
mysql --version
