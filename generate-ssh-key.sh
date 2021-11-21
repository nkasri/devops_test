#!/bin/bash
ssh-keygen -t rsa -N "" -f pet-clinc
mv pet-clinc terraform/pet-clinc.key
mv pet-clinc.pub terraform/pet-clinc.pem
