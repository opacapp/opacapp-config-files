#!/bin/bash
git checkout master .
git reset --hard
git pull -f origin master
rm bibs/*.json
python3 fetch.py
git add -A
git diff --cached --exit-code HEAD bibs && git reset HEAD . && git checkout . && exit 0
git commit -m "Data update" --author="OpacApp team <info@opacapp.de>"
git push origin master

