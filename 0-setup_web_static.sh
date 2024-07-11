#!/usr/bin/env bash
# a Bash script that sets up your web servers for the deployment of web_static

apt-get update
apt-get -y install nginx
# Install Nginx
mkdir -p /data/web_static/releases/test/
# Create the folder /data/web_static/releases/test/ if it doesn’t already exist
mkdir -p /data/web_static/shared/
# Create the folder /data/web_static/shared/ if it doesn’t already exist
echo "<html>
<head>
<title>Hello World!</title>
</head>
<body>
<h1>Hello World!</h1>
</body>" > /data/web_static/releases/test/index.html
# Create a fake HTML file /data/web_static/releases/test/index.html
ln -sf /data/web_static/releases/test/ /data/web_static/current
# Create a symbolic link /data/web_static/current linked to the /data/web_static/releases/test/
chown -hR ubuntu:ubuntu /data/
# Give ownership of the /data/ folder to the ubuntu user AND group 
sed -i '51 i \\n\tlocation /hbnb_static {\n\talias /data/web_static/current;\n\t}' /etc/nginx/sites-available/default
# Update the Nginx configuratio
service nginx restart