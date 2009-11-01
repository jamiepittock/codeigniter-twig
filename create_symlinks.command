#!/bin/bash

# This script creates symlinks from the addon files and directories to the appropriate locations in the CI installation.
# It enables us to keep the addon in a single folder in the root of the site, and manage it as a separate git submodule.

addon_dir_path=`pwd`

echo "Enter the path to your CodeIgniter installation, without a trailing slash (e.g. /var/www/html/mysite.com), and press ENTER:"
read ci_path
echo "Enter your 'system' folder name, and press ENTER:"
read ci_system_folder

# Delete any existing symlinks.
rm "$ci_path"/"$ci_system_folder"/application/config/twig.php
rm "$ci_path"/"$ci_system_folder"/application/libraries/Twig.php

# Create the symlinks.
ln -s "$addon_dir_path"/system/application/config/twig.php "$ci_path"/"$ci_system_folder"/application/config/twig.php
ln -s "$addon_dir_path"/system/application/libraries/Twig.php "$ci_path"/"$ci_system_folder"/application/libraries/Twig.php