#!/bin/bash


USERID=$(id -u)
#echo "User ID is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "please run this script with root privilages"
    exit 1
fi
dnf list installed git

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install it.."
    dnf install git -y # here installing
    if [ $? -ne 0 ]
    then
        echo "Git installation is not success...check it"
        exit 1
    else
        echo "Git installation is success"
    fi
else
    echo "Git is already installed, nothing to do.."
fi

dnf list installed mysql

if [ $? -ne 0 ]
then 
    echo "mysql is not installed ...going to install..."
    dnf install mysql -y
    if [ $? -ne 0 ]
    then    
    echo "mysql is not installed please check once.."
    exit 1
    else
    echo "mysql is installed successfully.."
    fi
else
    echo "mysql is already installed"
fi