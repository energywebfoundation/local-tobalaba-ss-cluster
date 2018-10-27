#!/bin/bash
LOGLEVEL=${1:-info}
RUST_LOG=$LOGLEVEL,secretstore=trace,secretstore_net=trace ../parity --config ./conf_alice.toml &
RUST_LOG=$LOGLEVEL,secretstore=trace,secretstore_net=trace ../parity --config ./conf_bob.toml &
RUST_LOG=$LOGLEVEL,secretstore=trace,secretstore_net=trace ../parity --config ./conf_charlie.toml
