cat >$SrvLib/cfPhpDkrLib.sh <<'EOFo'
#!/bin/bash
    echo "start: $SrvLib/cfPhpDkrLib.sh"
if [[ ! -e $KnBasHP ]]; then  echo ">>>> DII: $KnRtN ($KnPkgN) at $KnBasHP"
mkdir -p  $KnBasHP/{etc/$KnPkgN,log/$KnPkgN}
[[ -e $SrvEtcKnz/$KnN ]] || ln -srf $SrvEtcKnz/$KnN  $KnBasHP 
[[ -e $KnBasHP/etc/$KnPkgN/php-fpm.conf ]] || \
			cp -rp $SrvLib/php7/$DkrRtImgN/$KnConfVer/* $KnBasHP/etc/php7/
fi			#tt	tree -ACa  $KnBasHP;		exit;
.	$SrvLib/cfDkrCtrlLib.sh
doCli $@ 