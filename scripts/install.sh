#!/bin/bash

# Exit immediately if a command fails
set -e

# Install Node.js and npm (Amazon Linux 2)
curl -sL https://rpm.nodesource.com/setup_16.x | bash -
yum install -y nodejs

# Ensure app directory exists
mkdir -p /home/ec2-user/app

# Copy CodeDeploy app content to final directory
cp -r /home/ec2-user/* /home/ec2-user/app || true

# Navigate to app directory
cd /home/ec2-user/app || exit 1

# Install dependencies (if package.json exists)
if [ -f package.json ]; then
  npm install
fi

