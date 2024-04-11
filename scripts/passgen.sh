#!/bin/bash

chars="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()"
len=16
pass=$(head /dev/urandom | tr -dc "$chars" | head -c "$len")

echo "Randomly Generated Password: $pass"
