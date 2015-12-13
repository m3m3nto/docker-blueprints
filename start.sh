#!/bin/bash
sudo docker run --name basic_mysql -p 4406:3306 -e MYSQL_ROOT_PASSWORD=123456 -d m3m3nto/mysql:latest
sudo docker run --name basic_drupal -p 8080:80 --link basic_mysql:mysql -d m3m3nto/drupal:7