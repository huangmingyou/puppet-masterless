file {
	"/tmp/puppet-ml.tag":
	content => content => template("base/tag.erb");
	"/tmp/puppet-ml.tag2":
	source => "puppet:///modules/base/tag2";
}
