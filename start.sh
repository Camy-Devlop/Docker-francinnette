#! /bin/bash
cd  /app
trap /script/msg.sh SIGINT
/root/francinette/tester.sh
zsh
