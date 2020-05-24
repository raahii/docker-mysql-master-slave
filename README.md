# docker mysql master slave replication

Simple MySQL master-slave replication with docker-compose for development.

## Configuration

- 1 master, 1 slave

-  mysql user (both master and slave)

  - user: `root`
  - password: `password`

- database to be replicated: `app`

  

## Run

```
docker-compose up -d
```



## Test

- Make changes to master

```
docker exec mysql-master sh -c "export MYSQL_PWD=password; mysql -u root app -e 'create table code(code int); insert into code values (100), (200)'"  
```

- Read changes from slave

```
docker exec mysql-slave sh -c "export MYSQL_PWD=password; mysql -u root app -e 'select * from code \G'"  
```



## Reference

- [How To Set Up Master Slave Replication in MySQL](https://www.digitalocean.com/community/tutorials/how-to-set-up-master-slave-replication-in-mysql)
- [vbabak/docker-mysql-master-slave](https://github.com/vbabak/docker-mysql-master-slave)
