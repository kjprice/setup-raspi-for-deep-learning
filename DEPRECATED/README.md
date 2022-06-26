Honestly, installing everything we need on a raspberry pi is crazy. The file `setup.sh` is crazy town and needs to be rewritten.

For issues with CV2, check this out "https://stackoverflow.com/questions/53347759/importerror-libcblas-so-3-cannot-open-shared-object-file-no-such-file-or-dire"

Instead of running `pip install` or `pip3 install` try `python3 -m pip install`

Install Docker: https://phoenixnap.com/kb/docker-on-raspberry-pi (be sure to run docker with `sudo`)

Try this for installing tensorflow: https://www.tensorflow.org/install/source_rpi

### Webmin
Webmin is installed as part of `setup.sh`. You can view the webmin screen by going to `https://HOSTNAME:10000` where `HOSTNAME` is the hostname for the raspberry pi.

You may get a security error on chrome. You can bypass the error by typing `thisisnotsafe` while on the page.