create user 'slave_user'@'%' identified by 'password';
grant replication slave on *.* to 'slave_user'@'%' with grant option;
flush privileges;
