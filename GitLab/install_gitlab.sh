apt-get update -y
apt-get install -y curl openssh-server ca-certificates tzdata perl
apt-get install -y postfix
apt-get install -y curl
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | sudo bash
sudo EXTERNAL_URL="https://gitlab.nois.com" apt-get install gitlab-ee
