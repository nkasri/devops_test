#!/bin/bash
sudo docker pull docker push kertouch/devops_test:latest
sudo docker run -d -p 80:5000 kertouch/devops_test:latest