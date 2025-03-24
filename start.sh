#! /bin/bash
echo "TESt"
cd  /app
trap /script/msg.sh SIGINT
/root/francinette/tester.sh
zsh
