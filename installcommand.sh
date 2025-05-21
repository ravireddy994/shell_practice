#!/bin/bash
USERID=$(id-u)

if [ $USERID -ne 0 ]
then
echo "error: run with sudo user"
exit 1
else
echo "you are running with root user"
fi