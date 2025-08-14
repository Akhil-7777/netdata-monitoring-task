---

### **2. setup-docker.sh (Automation Script)**
```bash
#!/bin/bash
# Install Docker
sudo apt-get update
sudo apt-get install -y docker.io
sudo systemctl start docker

# Run Netdata container
docker run -d --name=netdata -p 19999:19999 netdata/netdata

echo "Netdata is running! Access at http://$(curl -s ifconfig.me):19999"
