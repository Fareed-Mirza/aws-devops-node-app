
#!/bin/bash

cd /home/ec2-user/app || exit 1

# Kill existing node processes (optional)
pkill node || true

# Start the app in background
nohup node app.js > app.log 2>&1 &

