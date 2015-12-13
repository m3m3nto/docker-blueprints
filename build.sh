#!/bin/bash
sudo docker build -f Dockerfile.mysql -t m3m3nto/mysql:latest .
sudo docker build -f Dockerfile.drupal -t m3m3nto/drupal:7 .