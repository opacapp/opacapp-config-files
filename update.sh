#!/bin/bash
git pull -f origin master
python3 fetch.py
git diff --exit-code bibs && exit 0
git add -A bibs/*.json last_library_config_update.txt
git commit -m "Data update" --author="OpacApp team <info@opacapp.de>" bibs/*.json last_library_config_update.txt
git push origin master

