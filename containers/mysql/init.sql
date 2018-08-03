create database absinthe_tutorial_dev;
create database absinthe_tutorial_test;

grant all privileges on absinthe_tutorial_dev.* TO "mysqluser"@"%" identified by "PASSWORD";
grant all privileges on absinthe_tutorial_test.* TO "mysqluser"@"%" identified by "PASSWORD";

flush privileges;
