#!/bin/bash
set -e

# Remove old file if it exists
rm -f output/sr-remaster-pl.zip

# Create the initial archive with original file structure
7z a output/sr-remaster-pl.zip ../1 ../2 ../LICENSE ./INSTALL.txt

# Rename entries inside the zip
7z rn output/sr-remaster-pl.zip \
    1/TEXT/PL 1/TEXT/RU \
    2/TEXT/PL 2/TEXT/RU \
    1/PIX/TBC_PL_HD.dds 1/PIX/TBC_RU_HD.DDS \
    1/PIX/VERSE_PL_HD.dds 1/PIX/VERSE_RU_HD.DDS \
    2/PIX/THEEND_PL_HD.dds 2/PIX/THEEND_RU_HD.DDS

echo "✅ ZIP file created successfully."
