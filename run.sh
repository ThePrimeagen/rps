#!/bin/bash

shoot() {
    eosc push message rps shoot "{\"player\":\"$1\", \"game_id\": $2, \"move\": $3}" -S rps,$1 -p $1@active
}

request() {
    eosc push message rps request "{\"player\":\"$1\"}" -S rps,$1 -p $1@active
}

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
elif [ "$1" == "play-tie" ]; then
    echo "Starting..."
    request my.account

    echo "prx -- should have my.account in there"
    eosc get table rps rps prx

    echo "agames -- should have my.account in there"
    eosc get table rps rps agames

    echo "games -- Should have no games"
    eosc get table rps rps games

    request my.account2
    echo "prx -- should be empty"
    eosc get table rps rps prx

    echo "agames -- Should have one in each scope"
    eosc get table my.account rps agames
    eosc get table my.account2 rps agames

    echo "games -- Should have one game"
    eosc get table rps rps games

    echo "accounts -- None"
    eosc get table rps rps accounts

    echo "my.account Shooting..."
    shoot my.account $2 1

    echo "games -- Should have one game"
    eosc get table rps rps games

    echo "my.account2 Shooting..."
    shoot my.account2 $2 1

    echo "games -- Should have one game"
    eosc get table rps rps games

    echo "accounts -- None"
    eosc get table rps rps accounts
elif [ "$1" == "play-win" ]; then
    echo "Starting..."
    request my.account

    echo "prx -- should have my.account in there"
    eosc get table rps rps prx

    echo "agames -- should have my.account in there"
    eosc get table rps rps agames

    echo "games -- Should have no games"
    eosc get table rps rps games

    request my.account2
    echo "prx -- should be empty"
    eosc get table rps rps prx

    echo "agames -- Should have one in each scope"
    eosc get table my.account rps agames
    eosc get table my.account2 rps agames

    echo "games -- Should have one game"
    eosc get table rps rps games

    echo "accounts -- None"
    eosc get table rps rps accounts

    echo "my.account Shooting..."
    shoot my.account $2 2

    echo "games -- Should have one game"
    eosc get table rps rps games

    echo "my.account2 Shooting..."
    shoot my.account2 $2 1

    echo "games -- Should have one game"
    eosc get table rps rps games

    echo "accounts -- None"
    eosc get table rps rps accounts
fi

