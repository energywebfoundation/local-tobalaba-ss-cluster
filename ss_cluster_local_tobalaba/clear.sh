#!/bin/bash
../parity --config ./conf_alice.toml db kill &
../parity --config ./conf_bob.toml db kill &
../parity --config ./conf_charlie.toml db kill

# only works if script is executed from this file's location
FILEDIR=`dirname "$0"`

rm -rf $FILEDIR/db.alice/secretstore/db
rm -rf $FILEDIR/db.bob/secretstore/db
rm -rf $FILEDIR/db.charlie/secretstore/db
