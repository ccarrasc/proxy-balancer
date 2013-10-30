#!/bin/bash

sudo apt-get update

# Install Apache HTTP Server
sudo apt-get install apache2 -y

# Enable modules for proxy, load balancing, and rewrites
sudo a2enmod proxy
sudo a2enmod proxy_http
sudo a2enmod proxy_balancer

# Disable the default site
sudo a2dissite default

# Link and enable the load balancer
sudo ln -s /vagrant/load-balancer /etc/apache2//sites-available/load-balancer
sudo a2ensite load-balancer

# Restart Apache
sudo apachectl restart


################# For rewriting html links #################
# Install proxy_html and libxml2:
#   sudo apt-get install libapache2-mod-proxy-html libxml2-dev -y

# Load the appropriate modules in proxy_html.conf (sudo find / -name libxml2.so):
#   LoadFile       /usr/lib/x86_64-linux-gnu/libxml2.so
#   LoadModule     proxy_html_module       modules/mod_proxy_html.so

# Turn on proxy html for your virtual host:
#ProxyHTMLExtended On

# Enable the modules in apache:
#   sudo a2enmod proxy_html
#   sudo a2enmod rewrite
#   sudo apachectl restart
