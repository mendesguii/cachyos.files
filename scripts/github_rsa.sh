#!/bin/bash

echo "=== GitHub SSH Key Generator ==="
echo ""

read -p "Enter your email: " email

if [ -z "$email" ]; then
    echo "Error: Email cannot be empty."
    exit 1
fi

echo ""
echo "Creating SSH key for GitHub..."

mkdir -p ~/.ssh
ssh-keygen -o -t rsa -C "$email" -f ~/.ssh/id_rsa

echo ""
echo "=== Copy this SSH key to GitHub ==="
echo ""
cat ~/.ssh/id_rsa.pub
