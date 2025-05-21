#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "error: run with sudo user"
    exit 1
else
    echo "you are running with root user"
fi
dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "mysql not installed : going to install"
    dnf install mysql -y

    if [ $? -eq 0 ]
    then
        echo "mysql installed SUCESS"
    else
        echo "mysql installed failed"
        exit 1
    fi
else
    echo "mysql already installed : good to go"
    exit 1
fi

dnf list installed python3

if [ $? -ne 0 ]
then
    echo "python3 not installed : going to install"
    dnf install python3 -y

    if [ $? -eq 0 ]
    then
        echo "python3 installed SUCESS"
    else
        echo "python3 installed failed"
        exit 1
    fi
else
    echo "python3 already installed : good to go"
    exit 1
fi

dnf list installed nginx

if [ $? -ne 0 ]
then
    echo "nginx not installed : going to install"
    dnf install nginx -y

    if [ $? -eq 0 ]
    then
        echo "nginx installed SUCESS"
    else
        echo "nginx installed failed"
        exit 1
    fi
else
    echo "nginx already installed : good to go"
    exit 1
fi