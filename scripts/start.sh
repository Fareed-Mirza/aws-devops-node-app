#!/bin/bash

# Navigate to app directory
cd /home/ec2-user/app || exit 1

# Kill existing node process if running
pkill node || true

# Start Node.js app in background
nohup node app.js > app.log 2>&1 &

