libopac configuration files
===========================

This repository contains JSON configuration files for using [libopac](https://github.com/opacapp/opacclient/tree/master/opacclient/libopac) with more than 1000 public and academic libraries from all over the world. A [list of supported libraries](https://en.opacapp.net/libraries/) is available on our website.

Usage
-----
All the files are located in the `bibs` directory of this repository. You can load the JSON data from these configuration files using libopac's `Library.fromJSON(String, JSONObject)` function.

Contributing
------------
If you would like a library using one of the [OPACs already supported by libopac](https://en.opacapp.net/compatibility/) to be added to the app, you can do so by forking this repository, creating your JSON configuration file and submitting a Pull Request. The same is true for if you have an adjustment to make to one of the files (such as an updated OPAC URL).

As this repository is only a one-way mirror of the files we are keeping on a [web server](https://github.com/opacapp/opacclient/blob/master/opacclient/opacapp/LIBRARY_DATA.md), we will not actually merge your Pull Request, but add the file on the server instead. It will then also be synced to this repository.

If you would like your library to be added, but are unsure whether libopac supports it, please contact us at info@opacapp.de.

License
-------
Being a part of the [Web Opac App](https://github.com/opacapp/opacclient) project, these files are also licensed under the terms of the [MIT License](http://opensource.org/licenses/mit-license.php).
