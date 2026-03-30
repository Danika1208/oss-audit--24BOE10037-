#!/bin/bash
# ============================================
# Script 3: Disk and Permission Auditor
# ============================================

# Student Details 
echo "===== Student Details ====="
echo "Name: Danika Puri"
echo "Roll No: 24BOE10037"
echo ""

echo "===== Directory Audit Report ====="
echo "----------------------------------"

# Directories to audit 
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

# Loop through directories
for DIR in "${DIRS[@]}"; do

    # Check if directory exists
    if [ -d "$DIR" ]; then
        
        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Get size of directory
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        # Print result
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    
    else
        echo "$DIR does not exist on this system"
    fi

done

echo ""
echo "===== Python Configuration Directory Check ====="

# Check Python config directories 
CONFIG_DIRS=("/etc/python3" "/usr/lib/python3" "$HOME/.local/lib")

for CONF in "${CONFIG_DIRS[@]}"; do

    if [ -d "$CONF" ]; then
        
        PERMS=$(ls -ld $CONF | awk '{print $1, $3, $4}')
        echo "$CONF exists => Permissions: $PERMS"
    
    else
        echo "$CONF not found"
    fi

done
