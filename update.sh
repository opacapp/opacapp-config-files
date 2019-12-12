#!/bin/bash
git checkout master .
git reset --hard
git pull -f origin master
rm bibs/*.json
python3 fetch.py
git diff --exit-code HEAD bibs && exit 0
git add -A
git commit -m "Data update" --author="OpacApp team <info@opacapp.de>" bibs/*.json last_library_config_update.txt
git push origin master

