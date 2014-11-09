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
7. You can pull a foreman server docker image from hub.docker.com ,name with huangmingyou/foreman

this is a pre configed foreman server.
