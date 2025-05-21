#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "error: run with sudo user"
exit 1
else
echo "you are running with root user"
fi

dnf install mysql -y

if [ $? -eq 0 ]
then
echo "mysql installed SUCESS"
else
echo "mysql installed failed"
exit 1
fi