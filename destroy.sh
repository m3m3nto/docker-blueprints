#!/bin/bash
sudo docker stop basic_mysql
sudo docker stop basic_drupal
sudo docker rm basic_mysql
sudo docker rm basic_drupal