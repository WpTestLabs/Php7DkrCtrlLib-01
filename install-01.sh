#  WpTestLabs/Php7DkrCtrlLib-01/install-01.sh

  install -pm 740 -o root -g root -t $SrvLib  cfPhp7DkrLib.sh
  install -pm 740 -o root -g root -t $SrvBin  nPhp7Kn.sh

  install -pm 740 -o root -g root -t $WwwLib  importWXR.sh
  mkdir -p  $WwwDfltSwc/t  #@@@@ test for $WWW...
	install -pm 644 -o root -g root -t $WwwDfltSwc/t  _ext.php _server.php phpinfo.php
  ln -srf $SrvBin/cfKnCli.sh $SrvBin/php
  ln -srf $SrvBin/cfKnCli.sh $SrvBin/php5
  ln -srf $SrvBin/cfKnCli.sh $SrvBin/php7
