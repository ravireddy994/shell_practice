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
    fi
    
}
dnf list installed mysql

if [ $? -eq 0 ]
then
    echo "mysql Already installed : good to go"
    exit 1
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo "my sql is not installed : goinig to install"
fi