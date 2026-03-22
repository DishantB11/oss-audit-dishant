#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

# Check if package is installed
if dpkg -l | grep -w "$PACKAGE" > /dev/null; then
    echo "$PACKAGE is installed."
    
    VERSION=$(dpkg -l | grep -w "$PACKAGE" | awk '{print $3}')
    echo "Version: $VERSION"
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement
case $PACKAGE in
    git)
        echo "Git: a distributed version control system for tracking code changes"
        ;;
    apache2)
        echo "Apache: a popular open-source web server"
        ;;
    mysql-server)
        echo "MySQL: an open-source relational database system"
        ;;
    vlc)
        echo "VLC: a multimedia player that supports multiple formats"
        ;;
    *)
        echo "Unknown package"
        ;;
esac
