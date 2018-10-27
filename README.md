# Local Tobalaba Secret Store cluster
Setting up a local Tobalaba-like Secret Store cluster with ease.


**Warning**: Here, the Secret Store nodes are validator nodes too (for simplicity), which should not be the case ideally.

## Maintainers
**Primary**: Adam Nagy (@ngyam)

## Contents

 - [`chainspec folder`](./chainspec): chainspec files
 - [`network_local_tobalaba folder`](./ss_cluster_local_tobalaba): scripts and settings for a local Tobalaba-like Secret Store cluster:
    - 3 nodes configured to connect with each other (alice, bob and charlie)
    - 3 accounts
    - 3 separate db-s
    - start/stop/clear/fund scripts

## Getting started

1. Place your [Parity binary](https://github.com/paritytech/parity-ethereum) to project root
2. Rev up the nodes with:
    ```bash
    cd ss_cluster_local_tobalaba
    ./start.sh
    ```
    You should see in the logs that your nodes are connected, having 2 peers:
    ```bash
    2018-10-18 14:40:57  IO Worker #3 INFO import     2/25 peers   78 KiB chain 229 KiB db 0 bytes queue 11 KiB sync  RPC:  0 conn,    0 req/s,    0 µs
    2018-10-18 14:40:57  IO Worker #2 INFO import     2/25 peers   78 KiB chain 229 KiB db 0 bytes queue 11 KiB sync  RPC:  0 conn,    0 req/s,    0 µs
    2018-10-18 14:40:57  IO Worker #1 INFO import     2/25 peers   78 KiB chain 229 KiB db 0 bytes queue 11 KiB sync  RPC:  0 conn,    0 req/s,    0 µs
    2018-10-18 14:41:27  IO Worker #0 INFO import     2/25 peers   78 KiB chain 229 KiB db 0 bytes queue 11 KiB sync  RPC:  0 conn,    0 req/s,    0 µs
    ```
3. When you are done:
   ```bash
    ./stop.sh
   ```
4. If you need to clean chain db
   ```bash
    ./clear.sh
   ```

### Sending play money

Sending money from pre-funded rich account, `0x00a329c0648769a73afac7f9381e08fb43dbea72`:

```bash
./fund.sh account1 account2 ...
```

### Log files
Each node writes to separate log files too.
E.g. for node "alice" it can be seen in:
```bash
tail -f ss_cluster_local_tobalaba/db.alice/parity.log
```

## Contributing

Any kind of suggestions/improvements are welcome.

When contributing to this repository, please first discuss the change you wish to make via `issues` before making a change. 

As for everything else in the project, the contributions to the repo are governed by our [Code of Conduct](./CODE_OF_CONDUCT.md).

## Resources
For more information, check out Parity's..
 - local PoA tutorial: https://wiki.parity.io/Demo-PoA-tutorial
 - Secret Store configuration wiki page: https://wiki.parity.io/Secret-Store-Configuration
 - Secret Store tutorial: https://wiki.parity.io/Secret-Store-Tutorial-overview
