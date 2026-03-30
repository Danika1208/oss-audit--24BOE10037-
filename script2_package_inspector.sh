#!/bin/bash
# ============================================
# Script 2: FOSS Package Inspector
# ============================================

# Student Details (must be shown in output)
echo "===== Student Details ====="
echo "Name: Danika Puri"
echo "Roll No: 24BOE10037"
echo ""

# Define package (change this if needed)
PACKAGE="python3"

echo "===== Package Inspection ====="

# Check if package is installed (Ubuntu-compatible)
if dpkg -s $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    
    # Show version, license, summary (similar to rpm -qi)
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# Case statement for philosophy note
case $PACKAGE in
    python3) echo "Python: simplicity and readability driving open innovation" ;;
    git) echo "Git: distributed version control empowering collaboration" ;;
    vlc) echo "VLC: media freedom for everyone" ;;
    firefox) echo "Firefox: privacy-first open web browser" ;;
    fakepkg) echo "This package represents missing software in open ecosystems" ;;
    *) echo "Unknown package — explore more open-source tools!" ;;
esac
