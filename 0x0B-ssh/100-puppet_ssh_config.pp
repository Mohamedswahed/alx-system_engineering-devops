#!/usr/bin/env bash
# to change the configuration file automatically

file { '/etc/ssh/ssh_config':
    ensure  => present,
    content => "#SSH client configuration
                Host *
                IdentityFile ~/.ssh/school
                PasswordAuthentication no
               ",
}

