#!/bin/bash

if [ "$1" == "s" ]; then
    echo "START UP"
    eosc wallet open -n w2
    eosc wallet unlock --password PW5K3G9yUe9t1UCU2jFeK6jWjdrupCwbgs9aNb2vzPRdh27BESbc6 -n w2
    eosc create account inita rps EOS6EEN5Ve7sx7xSABH8sG6SK3ZeL9Qw6K2qWNETzMnvUUJGTu2bw EOS79iCLk9EuqzZ37C6Db5tBnELp12Wa2PQW9XvqG8PSChTfXatbb
    eosc create account inita my.account EOS6EEN5Ve7sx7xSABH8sG6SK3ZeL9Qw6K2qWNETzMnvUUJGTu2bw EOS79iCLk9EuqzZ37C6Db5tBnELp12Wa2PQW9XvqG8PSChTfXatbb
    eosc create account inita my.account2 EOS6EEN5Ve7sx7xSABH8sG6SK3ZeL9Qw6K2qWNETzMnvUUJGTu2bw EOS79iCLk9EuqzZ37C6Db5tBnELp12Wa2PQW9XvqG8PSChTfXatbb
    eosc create account inita my.account3 EOS6EEN5Ve7sx7xSABH8sG6SK3ZeL9Qw6K2qWNETzMnvUUJGTu2bw EOS79iCLk9EuqzZ37C6Db5tBnELp12Wa2PQW9XvqG8PSChTfXatbb

elif [ "$1" == "b" ]; then
    echo "BUILD"
    eoscpp -o ./contract/rps.wast ./contract/rps.cpp
elif [ "$1" == "u" ]; then
    echo "UPLOAD"
    eosc set contract rps ./contract/rps.wast ./contract/rps.abi
elif [ "$1" == "c" ]; then
    eosc push message rps request "{\"player\":\"$2\"}" -S rps,$2 -p $2@active
elif [ "$1" == "shoot" ]; then
    eosc push message rps shoot "{\"player\":\"$2\", \"game_id\": $3, \"move\": $4}" -S rps,$2 -p $2@active
fi
