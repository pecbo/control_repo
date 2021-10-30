class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => running,
    enable => true,
  }
  ssh_authorized_key {'root@puppet.local':
    ensure => present,
    user => root,
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDCQLzrJ0Qtg+GgtO+tSv661vjrEsynxUrROnpBZ/VmxNV2tISaVwQiDtLkwHkKfGRBXAxD7nPLrPGi6rj1Dt4m+kMRakI1FGjlAx1ZESwamc1b2MzMwcnPc790PsZESgSgRhUz90LZ+CHOIygK6mOqyQeNrh/hJEQxoCULwzaBlhULNjPvNZZZH5ojSbDZXFSBKCO6fzMSqJpFxQqMMFqQd3z4iqVamOJxVPlqTgnAmNPGpj5Uq7AAnIWNX+aVMY5NEDAZhiQPr3AAMpbvWjPOe6azOzBcMsMudc9RIY/f3KpQhRLTaFs5waC2tcZIr1SS6JTEVHupLfgCSdWt9h3d',
  }
}
