# sqlplus

## オラクルサーバへの接続するための環境設定手順

- 「非同期IO(libio)」のインストール  
$ sudo apt install libaio1
- 「リードラインラッパー(rlwrap)」のインストール  
$ sudo apt install rlwrap
- sqlplus.shの編集  
ユーザ名、パスワード、オラクルサーバのIPアドレスの編集

``` .sh
#!/bin/bash

USER=hr # ユーザ名
PASS=hr # パスワード
ADDR=192.168.30.4 # オラクルサーバのIPアドレス
PORT=1521
SID=orcl
BASE=${HOME}/instantclient_12_1

export LD_LIBRARY_PATH=${BASE}:${LD_LIBRARY_PATH}
export SQLPATH=${BASE}:${SQL_PATH}
export NO_PROXY=localhost,$ADDR
export no_proxy=localhost,$ADDR


rlwrap $BASE/sqlplus $USER/$PASS@$ADDR:$PORT/$SID

```

- runInstall.shの実行  
$ ./runInstall.sh
- オラクルサーバへの接続  
$ sqlplus.sh