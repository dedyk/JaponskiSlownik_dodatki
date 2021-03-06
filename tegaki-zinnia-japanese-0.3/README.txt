Install
========

In Windows:
-----------

Copy the .meta and .model files to 
C:\Program Files\tegaki-recognize\models\zinnia\

In Mac OS X:
------------

Copy the .meta and .model files to 
/Library/Application Support/tegaki/models/zinnia/

UNIX
----

Run "make install".

Build model from source
=======================

This archive contains a pre-built model but if you like, you can
rebuild the model from source using "tegaki-build", available from
tegaki-tools.

$ make

Model files
===========

Model files (extension .model) contain the main handwriting model data.

Meta files
==========

Meta files (extension .meta) contain meta-data regarding model files. They
must be encoded in UTF-8. They are defined as key-value pairs, one per line.
Possible keys include:

* name: model full name (mandatory).
* shortname: name with less than 3 characters (mandatory).
* language: language code such as "ja" or "zh_CN" (optional).
* path: path of the associate model file. If the path is not specified,
        the model file is assumed to be in the same directory with the same base
        name and the .model extension. For example, if "file.meta" is present
        and it doesn't define a path key, the presence of "file.model" is
        assumed (optional).

License
========

See the COPYING file.

Homepage
========

http://www.tegaki.org

