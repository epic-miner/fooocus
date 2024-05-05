#!/bin/bash

# Install pygit2 version 1.12.2
pip install pygit2==1.12.2

# Change directory to /content
cd /content

# Clone the Fooocus repository
git clone https://github.com/lllyasviel/Fooocus.git

# Change directory to the cloned repository
cd /content/Fooocus

# Run the Python script with specified arguments
python entry_with_update.py --share --always-high-vram &

# Expose local server to the internet using localtunnel
lt --port 8888 &

# Fetch content from the provided URL
wget -q -O - https://loca.lt/mytunnelpassword
