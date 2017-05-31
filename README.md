# KurentoCustomModule

* This is a working version of the KMS custom module build
* You will need to copy the CMake directory to your generated KMS module directory
* to build and install both the KMS module .so file as well as the client side javascript code, run the following command in your custom module direcotry:

 mkdir build; cd build; cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DGENERATE_JS_CLIENT_PROJECT=TRUE && sudo make install
