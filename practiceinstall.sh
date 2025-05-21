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
echo "my sql is not installed : goinig to install"
else
echo "mysql Already installed : good to go"
exit 1
fi

dnf install mysql -y
if [ $? -ne 0 ]
then
echo "install failed"
else
echo "installed sucess"
fi
