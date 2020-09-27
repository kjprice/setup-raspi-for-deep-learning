Honestly, installing everything we need on a raspberry pi is crazy. The file `setup.sh` is crazy town and needs to be rewritten.

For issues with CV2, check this out "https://stackoverflow.com/questions/53347759/importerror-libcblas-so-3-cannot-open-shared-object-file-no-such-file-or-dire"

Instead of running `pip install` or `pip3 install` try `python3 -m pip install`

Install Docker: https://phoenixnap.com/kb/docker-on-raspberry-pi (be sure to run docker with `sudo`)

Try this for installing tensorflow: https://www.tensorflow.org/install/source_rpi

