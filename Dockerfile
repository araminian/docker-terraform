FROM ubuntu
RUN apt update -yq && apt install wget -y && apt install unzip -y
WORKDIR /tmp
RUN wget https://releases.hashicorp.com/terraform/0.12.29/terraform_0.12.29_linux_amd64.zip
RUN unzip terraform*.zip -d /usr/local/bin
WORKDIR /
ENTRYPOINT ["/bin/bash"]
