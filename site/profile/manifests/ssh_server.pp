class profile::ssh_server {
    package {'openssh-server':
      
    }
    service {'sshd':
      ensure => 'running',
      ensure => 'true',      
    }
    ssh_authorized_key {'root@master.puppet.vm':      
      user => 'root',
      type => 'ssh-rsa',
      key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDPh/UmM9+9z6K76I/2Yx2cFQw/XJLZr392zDld0OJPsw7eTV6GNkn2R7DNWQh3Uglka5TxTI0VdeEsfiPRgapx4T1CO60RO43AQ2ei9IUq1UvxIIEd2Bn0roXKFqK/8CcUW8E38u9nis0kkmdeoyBOVAxEa28471+lLdnV1K+SE3DsSMcMWO6X3L4AGq05eiIuy3YOd47IhFCFchU5xqm9jPA2yfZZ0qvwV+X63ahdsjmrD4HF+q7kLTgCXfpU2dBpbQK4X4rH3NtIdUlq5i39rYopzgB/3IDLf6CyDO8VY4El6TceupU1Vln6uiRwVr4YePr1tjKM97XFE1vvdQun',
    }
}
