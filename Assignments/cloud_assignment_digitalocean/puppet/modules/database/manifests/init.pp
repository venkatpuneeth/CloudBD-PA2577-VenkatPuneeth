class database {

	package { ['mysql-server']:
    ensure => latest;
  }
    service { 'mysql':
    ensure  => running,
    require => Package['mysql-server'];
  }
}