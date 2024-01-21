#!/user/bin/env bash
# to change the configuration file automatically

file { 'etc/ssh/ssh_config':
	ensure => present.

contents =>"

	#SSH client configuration
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	"
}
