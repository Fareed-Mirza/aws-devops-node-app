#!/bin/bash

# Ensure app directory exists
mkdir -p /home/ec2-user/app

# Navigate to app directory
cd /home/ec2-user/app || exit 1

# Check if npm is available, then install dependencies
if command -v npm >/dev/null 2>&1; then
  npm install
else
  echo "❌ npm not found. Please install Node.js." >&2
  exit 127
fi

