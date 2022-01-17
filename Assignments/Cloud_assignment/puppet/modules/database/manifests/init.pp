class database{

	package { ['mysql-server']:
    ensure => latest;
  }
}