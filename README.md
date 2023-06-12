# APP-database

This database is responsible for providing a datastore to store sensors, pollutants, and captured pollutants. It uses
MySQL as the database engine, Docker for containerization, and Flyway for database migrations.

![image](https://user-images.githubusercontent.com/2886217/232968157-9b0136d4-339b-42c1-aad7-4d7775fad6c0.png)

## Video

Click below to see our video for the app.

[![Watch the video](https://i.imgur.com/OBm9FRB.png)](https://youtu.be/z_J9tR2n-vY)

## Setup

The easiest way to get a database up-and running with all the migrations applied is by using Docker-Compose:

```sh
docker-compose up
```

This will spin up a MySQL container with `root` as the username and `password` as the password. It will also come with a 
`db_data` database. Alongside the MySQL container, a temporary Flyway container will run and apply the migrations 
found in the [migrations'](./migrations) directory.

To tear down this instance, run `docker-compose down`. To get rid of your local database copy, run 
`docker volume rm app-database_db_data`

## FAQ

**Q: The `docker volume rm app-database_db_data` command doesn't work for me.**

A: The `app-database` portion of the command is actually dependent on the name of the directory on your local system. If
you changed the directory name to be something other than the name of the repository, then you have to change that
portion of the command to reflect your new directory name.
