puppet-masterless
=================

Run puppet without puppet master. 

send puppet run report and facts to a foreman server.

use  this code run puppet manifests.

	$ puppet apply --config /opt/puppet-ml/etc/puppet.conf --modulepath=${WD}/modules ${WD}/manifests

use a crontab shell script to download puppet manifests from a rsync server,or http server, or ftp server.

use gnupg verify the download code.

The pushfacts shell script will send facts to a foreman server.

and when the puppet will use the foreman.rb report run status to a foreman server.

you can evan use a shell script get enc data from a foreman server. 






Installation
------------

1. Clone the repository:

        $ git clone git@github.com:huangmingyou/puppet-masterless.git


2. Copy the puppet-masterless into /opt or other directory:


        $ cp puppet-masterless /opt/ -ax

3. If you install puppet-masterless in other path,change the following files.
	
	* ${install dir}/etc/puppet.conf  
	* ${install dir}/shell.d/puppet-ins1
	* ${install dir}/lib/puppet/reports/foreman.rb
	

4. Config the foreman url in the following files.

	* ${install dir}/etc/foreman.yaml
	* ${install dir}/lib/puppet/pushfacts

5. Change the shell.d/puppet-ins1 for you self
6. Set a Crontab job run shell.d/puppet-ins1
7. You can pull a foreman server docker image from hub.docker.com ,name with huangmingyou/foreman , this is a pre configed foreman server.


说明
====

puppet masterless 是一种不使用puppet master运行puppet的方法，直接下载puppet 代码到服务器运行，把运行结果直接发送到foreman。
也可以直接发送facts到foreman , 并且把foreman 作为puppet enc 的来源。

运行机制
========

使用一个crontab job定时运行 shell.d里面的脚本，该脚本负责下载和验证(gpg 签名验证)puppet代码到本地来执行。

        $ puppet apply --config /opt/puppet-ml/etc/puppet.conf --modulepath=${WD}/modules ${WD}/manifests

pushfacts 脚本用来发送facts到foreman,可以定制需要发送的facts,也可以自己定义facter脚本，把脚本放到lib/facts.d目录下。
foreman.rb 用来发送puppet执行后的报告。

安装
===

git clone 本项目到合适的目录,拷贝到/opt/puppet-ml/; 定制shell.d里面的脚本下载puppet代码和执行puppet代码，
设置一个crontab脚本定时执行。

在foreman.yaml和pushfacts以及foreman.rb里面设置foreman server的相关配置。
