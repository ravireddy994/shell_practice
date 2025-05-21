#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Error: Run with sudo/root user"
    exit 1
else
    echo "Running with root User"
fi
VALIDATE(){
if [ $1 -ne 0 ]
    then
        echo "install $1 failed"
    else
        echo "installed $2 sucess"
        exit 1
    fi
    
}
dnf list installed mysql

if [ $? -eq 0 ]
then
    echo "mysql Already installed : good to go"
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo "my sql is not installed : goinig to install"
fi
dnf list installed python3

if [ $? -eq 0 ]
then
    echo "python3 Already installed : good to go"

    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo "python3 is not installed : goinig to install"
fi

dnf list installed nginx

if [ $? -eq 0 ]
then
    echo "nginx Already installed : good to go"
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo "nginx is not installed : goinig to install"
fi