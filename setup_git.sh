## Setup username and email

git config --global user.name "ealpha072"
git config --global user.email "your_email@example.com"

# Setup SSH Key for github
ssh-keygen -t ed25519 -C "your_email@example.com"
clip < ~/.ssh/id_ed25519.pub
