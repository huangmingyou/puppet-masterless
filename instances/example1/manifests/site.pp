Exec { path => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin" }
File {
        ignore => '.svn',
        ensure => present,
        mode => 0644, owner => root, group => root,
}
stage { 'first': before => Stage['main'] }
stage { 'last': require => Stage['main'] }

