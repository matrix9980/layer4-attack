#!/bin/bash
ip=$(curl ip.sb)
sed -i "s/YOURVPSIP/$ip/g" /var/www/html/api.php
