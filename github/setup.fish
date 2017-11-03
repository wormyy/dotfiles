#! /usr/bin/fish

ssh-keygen -t rsa -b 4096 -C "jul.retzer@gmail.com"
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub