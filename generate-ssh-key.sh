#!/bin/bash
ssh-keygen -t rsa -N "" -f pet-clinc
mv pet-clinc pet-clinc.key
mv pet-clinc.pub pet-clinc.pem
