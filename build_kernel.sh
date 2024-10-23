#!/bin/bash
make linux_clean
if [ $? -ne 0 ]; then
  echo "make linux_clean failed!!!"
  exit
fi

make linux
if [ $? -ne 0 ]; then
  echo "make linux kernel failed!!!"
  exit
fi

make linux_install
