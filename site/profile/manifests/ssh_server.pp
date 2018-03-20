class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDGeliLQHNpRwCverQXpXyO9ClLsz0dAMp9FiVaXe7AIWJJuGvcH3nxbvmAqOBhC/Zg4vWnJ55SpCj8BwtbRRSRTZTrVGK8bDUS+qEhxD9tItWYWuvuNUGsanN0Vx2YfoDJUrFHshVKp0n9SeWHyJk6VNgWdluzz44gZ8xLhwN/M48mXUw1lB0KBgsv6vpOa5ULZsoXKhPgRKMQw0SQtmwO8kOKeYKHtW4LJF+kUxrBRhJGTXEI80Q94lytoNtCiFnNvaa9dSpV1dxhTDOPEnZgHyO9oXe6TAuvVwS52kjqgzXIixtVbw3OUyI6su0jHtCRQ4Xl0UiMe0rJjTRMFpYd',
	}  
}
