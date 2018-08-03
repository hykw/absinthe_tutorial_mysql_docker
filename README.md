# absinthe_tutorial_mysql_docker
Absinthe Tutorial Code(https://github.com/absinthe-graphql/absinthe_tutorial) works with PostgreSQL. This is one of the modified version that works with MySQL in a docker env.

## How to prepare the environment

### Prepare Docker Environment

```
mkdir ~/.absinthe_tutorial_mix
MYUID=${UID} docker-compose up -d --build --force-recreate
```

Notice: Since `containers/mysql/varlib` directory is the volume of `/var/lib/mysql` in mysql environment, the uid of the directory differs to your account's uid. In order to rebuild the docker images, you need to adjust the permission to the one in your REAL environment.

One of the easiest ways just removes the directory with `sudo rm -rf containers/mysql/varlib`, and rebuild the images.  Moving the directory to somewhere, say `/tmp`, rebuild the images, and then replace the directory(`containers/mysql/varlib`) with the one(`/tmp/varlib`) also helps.


### Prepare Phoenix Environment

```
docker exec -it absinthe_tutorial /bin/bash

mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
```

### Prepare Seeds and Start Phoenix

```
docker exec -it absinthe_tutorial /bin/bash

cd absinthe_tutorial-master/
mix deps.get
mix ecto.migrate

mix phx.server
```

## Access GraphiQL

- http://localhost:3001/api/graphiql

