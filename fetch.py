#!/usr/bin/env python3
import json
import os.path
import urllib.request


r = urllib.request.urlopen('https://info.opacapp.net/androidconfigs/?format=json')
data = json.loads(r.read().decode("utf-8"))

for lib in data:
    fname = os.path.join("bibs", lib["_id"] + ".json")
    del lib["_id"]
    with open(fname, "w", encoding="utf-8") as f:
        json.dump(lib, f, indent=4, sort_keys=True)

with open("last_library_config_update.txt", "w") as f:
    f.write(r.headers.get("X-Page-Generated"))

