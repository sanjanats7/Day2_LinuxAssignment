echo "Updating package list..."
sudo apt-get update -y
echo "Installing required dependencies..."
sudo apt-get install -y ca-certificates curl
echo "Adding Docker’s GPG key..."
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo "Adding Docker repository..."
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
$(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
echo "Updating package list after adding Docker repository"
sudo apt-get update -y
echo "Installing Docker and its components"
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
echo "Starting and enabling Docker service."
sudo systemctl enable --now docker
echo "Running hello-world Docker container"
sudo docker run hello-world

