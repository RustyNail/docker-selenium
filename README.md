# docker-selenium

## Prepare

```bash
# Installing Docker Engine (http://docs.docker.jp/engine/installation/linux/ubuntulinux.html)
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce
sudo gpasswd -a $(whoami) docker

# Installing Docker Compose (http://docs.docker.jp/compose/install.html)
sudo curl -L -o /usr/local/bin/docker-compose $(curl -sI https://github.com/docker/compose/releases/latest | sed -n "/^Location:/{s/^.* //;s#/tag/#/download/#;s#\\r\$#/docker-compose-$(uname -s)-$(uname -m)#;p;}")
sudo chmod +x /usr/local/bin/docker-compose
sudo curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/bash/docker-compose -o /usr/share/bash-completion/completions/docker-compose
```

## Build & Test

```bash
git clone git@github.com:RustyNail/docker-selenium.git
cd docker-selenium

docker-compose build
docker-compose up
```

