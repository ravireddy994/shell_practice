#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Error: Run with sudo/root user"
    exit 1
else
    echo "Running with root User"
fi

dnf list installed mysql

if [ $? -eq 0 ]
then
    echo "mysql Already installed : good to go"
    exit 1
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "install failed"
    else
        echo "installed sucess"
    fi
else
    echo "my sql is not installed : goinig to install"
fi