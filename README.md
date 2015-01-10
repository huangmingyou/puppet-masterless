puppet-masterless
=================

Run puppet without puppet master. 

send puppet run report and facts to a foreman server.

use  this code run puppet manifests.

	$ puppet apply --config /opt/puppet/etc/puppet.conf --modulepath=${WD}/modules ${WD}/manifests


use gnupg verify the download code.

The pushfacts shell script will send facts to a foreman server.

and when the puppet will use the foreman.rb report run status to a foreman server.

you can evan use a shell script get enc data from a foreman server. 



