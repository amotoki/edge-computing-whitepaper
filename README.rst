=================================================
OpenStack Edge Computing whitepaper (RST version)
=================================================

This is an RST version of the OpenStack Edge Computing whitepaper.
https://www.openstack.org/assets/edge/OpenStack-EdgeWhitepaper-v3-online.pdf

Translations are imported from OpenStack translation platform.
https://translate.openstack.org/iteration/view/edge-computing/master

How to build the document
-------------------------

Preparation::

   $ pip install -r doc/requirements.txt

To build English version of the document::

   $ sphinx-build -a -W -b html doc/source doc/build/html

To build translated version of the document::

   $ sphinx-build -W -b gettext doc/source doc/source/locale
   (Set your language code like de, ko_KR and so on)
   $ LANG=ja
   $ ./adjust.sh $LANG
   $ sphinx-build -a -W -b html -D language=$LANG doc/source doc/build/html/$LANG
