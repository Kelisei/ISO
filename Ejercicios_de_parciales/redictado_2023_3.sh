#!/bin/bash

# goku

echo $(cat "/etc/passwd"| cut -d":" f1 | grep "r")
