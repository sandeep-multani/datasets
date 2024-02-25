#!/bin/bash

if [ ! -f $1 ]; then
  wget -O $1 $2
fi