#!/bin/bash
    echo "start: $SrvLib/cfPhpDkrLib.sh"
if [[ ! -e $KnBasHP ]]; then  echo ">>>> DII: $KnRtN ($KnPkgN) at $KnBasHP"
mkdir -p  $KnBasHP/{etc/$KnPkgN,log/$KnPkgN}
[[ -e $SrvEtcKnz/$KnN ]] || ln -srf $SrvEtcKnz/$KnN  $KnBasHP 
[[ -e $KnBasHP/etc/$KnPkgN/php-fpm.conf ]] || \
	cp -rp $SrvLib/php7/$DkrRtImgN/$KnConfVer/etc/php7/* $KnBasHP/etc/php7/
fi			#tt	tree -ACa  $KnBasHP;		exit;
.	$SrvLib/cfDkrCtrlLib.sh
ImportWXR () {  DkrCmd2CID "exec -it" /srv/www/lib/importWXR.sh $1 $2; }
doCli $@ 
