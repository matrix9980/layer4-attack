# udp-attack 一个简单的udp攻击程序
# 版本：1.0
# 发布时间：2020/02/06
<p>安装所需：</p>
<li>一台能发包的VPS</li>
<li>Centos 7.x系统</li>
<br>
现在开始安装，，，
<br>
<pre>cd /root && yum install -y git wget curl net-tools && git clone https://github.com/KLDGodY/udp-attack.git && cd udp-attack && mv ./* ../ && cd ../ && perl setup.pl</pre>
<blockquote>如果显示perl没有安装，，请自行到网上找教程，，，</blockquote>
安装过程中如果问你要不要安装某些东西，按y同意
<br>
等待安装好后，，就可以开始攻击力，，
命令格式：<pre>perl /root/ssyn.pl 要攻击的IP 端口 每秒发送数据包(bytes) 持续攻击秒数</pre>
当然你也可以用api攻击，地址是<pre>http://你的服务器地址/api.php?key=系统密码&host=[host]&port=[port]&time=[time]&method=[method]</pre>
说一下，method有3种模式，分别是udp，tcp，和stop，，
我的tg：<a href="//t.me/KLDGodY">@KLDGodY</a><br>
tg水群：<a href="//t.me/kldgodynb">@kldgodynb</a><br>欢迎各位dl加入，，，
