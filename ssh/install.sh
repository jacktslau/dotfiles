#!/bin/sh

RSA_FILE=$HOME/.ssh/id_rsa

if [ ! -f "$RSA_FILE" ]; then
    echo "SSH Keys not exists, creating a new one"
    read -p "Enter Your Email: "  EMAIL
    ssh-keygen -b 4096 -t rsa -f "$RSA_FILE" -q -N "" -C "$EMAIL"
    chmod 400 "$RSA_FILE"
    chmod 644 "$RSA_FILE.pub"
    echo "SSH Keys created, please copy it to GitHub"
fi
