#!/bin/bash
ip=$(curl -L tool.lu/ip)
sed -i "s/YOURVPSIP/$ip/g" /var/www/html/api.php
