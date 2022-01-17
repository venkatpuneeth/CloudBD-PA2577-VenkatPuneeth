stage { 'pre':
	before => Stage['main']
}

class { 'baseconfig':
	stage => 'pre'
}

include baseconfig

node 'appserver' {
	include nodejs
}

node 'dbserver' {
	include database
}

node 'web'{
	include web
}

node /tst\d+$/{
	include baseconfig
}