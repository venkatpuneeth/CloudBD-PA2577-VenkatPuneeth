stage { 'pre':
	before => Stage['main']
}

class { 'baseconfig':
	stage => 'pre'
}

include baseconfig

node 'appserver.local' {
	include nodejs
}

node 'dbserver.local' {
	include database
}

node 'web.local'{
	include web
}

node /tst\d+.local$/{
	include baseconfig
}