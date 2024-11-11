1. Virtual Box/VMWare Fusion running an Ubuntu 20.04 Desktop vm. 
	a. Ensure the vm has at least 90 GB of space allocated to it. 
2. For MAC M1 users, please install the Ubuntu 20.04 server image and then install ubuntu desktop separately.
	a. sudo apt install ubuntu-desktop
	b. Reboot
3. Install microk8s on the vm
	- sudo snap install microk8s --classic --channel=1.30
	- sudo usermod -a -G microk8s $USER
	- mkdir -p ~/.kube
	- chmod 700 ~/.kube
	- sudo chown -R namkalla ~/.kube
	- newgrp microk8s
	- microk8s status --wait-ready
	- microk8s kubectl get nodes
	- Ensure the cluster is healthy with  a sample deployment: 
	microk8s kubectl create deployment nginx --image=nginx
4. Install docker on the vm
	- sudo snap install docker
	- sudo groupadd docker
	- newgrp docker 
