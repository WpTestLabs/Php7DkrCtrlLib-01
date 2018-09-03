#!/bin/sh
#   /srv/www/lib/importWXR.sh  $1= FQPFN (.xml - WXR)   $2= FQP to WP wApp Base FQP
echo "importWXR.sh - FROM WXR FQPFN: $1  TO WP wApp Base FQP: $2"
cd $2
wp import $1 --authors=create --debug 
