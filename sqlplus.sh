#!/bin/bash

USER=hr
PASS=hr
ADDR=192.168.30.4
PORT=1521
SID=orcl
BASE=${HOME}/instantclient_12_1

export LD_LIBRARY_PATH=${BASE}:${LD_LIBRARY_PATH}
export SQLPATH=${BASE}:${SQL_PATH}
export NO_PROXY=localhost,$ADDR
export no_proxy=localhost,$ADDR


rlwrap $BASE/sqlplus $USER/$PASS@$ADDR:$PORT/$SID
