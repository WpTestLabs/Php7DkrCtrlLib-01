#!/bin/sh
#   /srv/www/lib/importWXR.sh  $1= FQPFN.xml (WXR)   $2= FQP to WP wApp Base FQP

cd $2
wp import $1 --authors=create --debug 
