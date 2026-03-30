#!/bin/bash
# ============================================
# Script 5: Open Source Manifesto Generator
# ============================================

# Student Details (must be in OUTPUT)
echo "===== Student Details ====="
echo "Name: Danika Puri"
echo "Roll No: 24BOE10037"
echo ""

echo "Answer three questions to generate your manifesto."
echo ""

# User input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Date and output file
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Writing manifesto to file
echo "===== Open Source Manifesto =====" > $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I use $TOOL every day, and it represents the power of open-source software." >> $OUTPUT
echo "To me, freedom means $FREEDOM — the ability to learn, modify, and share without limits." >> $OUTPUT
echo "I aspire to build $BUILD and contribute it back to the community." >> $OUTPUT
echo "Open source is not just code, it is a philosophy of collaboration and innovation." >> $OUTPUT

# Display message and content
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""

cat $OUTPUT
