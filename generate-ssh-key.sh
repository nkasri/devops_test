#!/bin/bash
ssh-keygen -t rsa -N "" -f pet-clinic
mv pet-clinic terraform/pet-clinic.key
mv pet-clinic.pub terraform/pet-clinic.pem
