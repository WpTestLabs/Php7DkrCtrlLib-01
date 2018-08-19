#!/bin/bash
    echo "--- Start: nPhp7Kn.sh - for \$Srv: $Srv"
if [[ -z "$Srv" ]]; then  echo -e "\n** \$Srv is not defined! **\n"; exit; fi
export KnN=t10Php7Kn   # @@@@>> $1  @@@@ check if KnN already in use !!!
export KnPkgN=php7
  #export DkrImgN=cldfns/php7-wp-alpine-apk
export DkrImgN=wptestlabs/php7fpm-wpmin
export KnConfVer=v0
export KnKlsN=cfPhp7DkrLib
export DkrRunDCmd=''
export KnGrpN=ZOLO
export DkrNet=--net=host
nNgxKnDef.sh  #qq  $KnN  $DkrImgN
[[ -e $SrvEtcKnz/$KnPkgN ]] || ln -sf $KnN $SrvEtcKnz/$KnPkgN
