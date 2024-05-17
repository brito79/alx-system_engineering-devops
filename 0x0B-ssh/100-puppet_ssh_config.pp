<<<<<<< HEAD
# Setting up my client config file
include stdlib

file_line { 'Turn off passwd auth':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
  replace => true,
}

file_line { 'Delare identity file':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '     IdentityFile ~/.ssh/school',
  replace => true,
}
=======
# Regex match explanation
#
# ^       beginning of the line
# [#]*  atleast one hash character
# [\s]*  zero or more white space characters
# (?i)IdentityFile case insensitive "IdentityFile"
# [\s]+ at least one whitespace character
# ~/.ssh/id_rsa The ssh private key file path we want to replace
# $      end of the line

file_line { 'Deny Password Auth':
  path               => '/etc/ssh/ssh_config',
  line               => '    PasswordAuthentication no',
  match              => '^[#]+[\s]*(?i)PasswordAuthentication[\s]+(yes|no)$',
  replace            => true,
  append_on_no_match => true
}

# Regex match explanation
#
# ^       beginning of the line
# [#]*  atleast one hash character
# [\s]*  zero or more white space characters
# (?i)PasswordAuthentication case insensitive "PasswordAuthentication"
# [\s]+ at least one whitespace character
# (yes|no) with the value "yes" or the value "no"
# $      end of the line
>>>>>>> 00b3190022d7b32cf1f57d15757ffea66ba0cd1a
