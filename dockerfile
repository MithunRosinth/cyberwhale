FROM kalilinux/kali-rolling

RUN apt update

RUN apt install -y aircrack-ng crackmapexec hydra john metasploit-framework nmap responder sqlmap
RUN apt install -y curl
RUN apt install -y theharvester
RUN apt install -y john-data
RUN apt install -y cewl
RUN apt install -y tshark
RUN apt install -y binwalk
RUN apt install -y exiftool
RUN apt install -y sublist3r
RUN apt install -y httpx-toolkit
RUN apt install -y netcat-openbsd
RUN apt install -y tcpdump
RUN apt install -y wordlists
RUN apt install -y gobuster
RUN apt install -y ffuf
RUN apt install -y whatweb
RUN apt install -y powershell
RUN apt install -y lynis
RUN apt install -y gophish
RUN apt install -y amass
RUN apt install -y dnsenum
RUN apt install -y python3-scapy
RUN apt install -y evil-winrm
RUN apt install -y terraform
RUN apt install -y ansible
RUN apt install -y awscli
RUN apt install -y kubernetes-helm


RUN apt install -y apt-transport-https ca-certificates
RUN curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
RUN echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | tee /etc/apt/sources.list.d/kubernetes.list
RUN apt update
RUN apt install -y kubectl

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash


ENTRYPOINT ["/usr/bin/zsh"]