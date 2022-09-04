Monero 'Fluorine Fermi' (v0.18.1.0-release)

This is the command line monero wallet. It needs to connect to a monero
daemon to work correctly.

Usage:
  monero-wallet-cli [--wallet-file=<filename>|--generate-new-wallet=<filename>] [<COMMAND>]

General options:
  --help                                Produce help message
  --version                             Output version information

Wallet options:
  --daemon-address arg                  Use daemon instance at <host>:<port>
  --daemon-host arg                     Use daemon instance at host <arg>
                                        instead of localhost
  --proxy arg                           [<ip>:]<port> socks proxy to use for
                                        daemon connections
  --trusted-daemon                      Enable commands which rely on a trusted
                                        daemon
  --untrusted-daemon                    Disable commands which rely on a
                                        trusted daemon
  --password arg                        Wallet password (escape/quote as
                                        needed)
  --password-file arg                   Wallet password file
  --daemon-port arg (=0)                Use daemon instance at port <arg>
                                        instead of 18081
  --daemon-login arg                    Specify username[:password] for daemon
                                        RPC client
  --daemon-ssl arg (=autodetect)        Enable SSL on daemon RPC connections:
                                        enabled|disabled|autodetect
  --daemon-ssl-private-key arg          Path to a PEM format private key
  --daemon-ssl-certificate arg          Path to a PEM format certificate
  --daemon-ssl-ca-certificates arg      Path to file containing concatenated
                                        PEM format certificate(s) to replace
                                        system CA(s).
  --daemon-ssl-allowed-fingerprints arg List of valid fingerprints of allowed
                                        RPC servers
  --daemon-ssl-allow-any-cert           Allow any SSL certificate from the
                                        daemon
  --daemon-ssl-allow-chained            Allow user (via --daemon-ssl-ca-certifi
                                        cates) chain certificates
  --testnet                             For testnet. Daemon must also be
                                        launched with --testnet flag
  --stagenet                            For stagenet. Daemon must also be
                                        launched with --stagenet flag
  --shared-ringdb-dir arg (=/root/.shared-ringdb, /root/.shared-ringdb/testnet if 'testnet', /root/.shared-ringdb/stagenet if 'stagenet')
                                        Set shared ring database path
  --kdf-rounds arg (=1)                 Number of rounds for the key derivation
                                        function
  --bitmessage-address arg (=http://localhost:8442/)
                                        Use PyBitmessage instance at URL <arg>
  --bitmessage-login arg (=username:password)
                                        Specify <arg> as username:password for
                                        PyBitmessage API
  --hw-device arg                       HW device to use
  --hw-device-deriv-path arg            HW device wallet derivation path (e.g.,
                                        SLIP-10)
  --tx-notify arg                       Run a program for each new incoming
                                        transaction, '%s' will be replaced by
                                        the transaction hash
  --no-dns                              Do not use DNS
  --offline                             Do not connect to a daemon, nor use DNS
  --extra-entropy arg                   File containing extra entropy to
                                        initialize the PRNG (any data, aim for
                                        256 bits of entropy to be useful, which
                                        typically means more than 256 bits of
                                        data)
  --wallet-file arg                     Use wallet <arg>
  --generate-new-wallet arg             Generate new wallet and save it to
                                        <arg>
  --generate-from-device arg            Generate new wallet from device and
                                        save it to <arg>
  --generate-from-view-key arg          Generate incoming-only wallet from view
                                        key
  --generate-from-spend-key arg         Generate deterministic wallet from
                                        spend key
  --generate-from-keys arg              Generate wallet from private keys
  --generate-from-multisig-keys arg     Generate a master wallet from multisig
                                        wallet keys
  --generate-from-json arg              Generate wallet from JSON format file
  --mnemonic-language arg               Language for mnemonic
  --command arg
  --restore-deterministic-wallet        Recover wallet using Electrum-style
                                        mnemonic seed
  --restore-from-seed                   alias for --restore-deterministic-walle
                                        t
  --restore-multisig-wallet             Recover multisig wallet using
                                        Electrum-style mnemonic seed
  --non-deterministic                   Generate non-deterministic view and
                                        spend keys
  --electrum-seed arg                   Specify Electrum seed for wallet
                                        recovery/creation
  --allow-mismatched-daemon-version     Allow communicating with a daemon that
                                        uses a different RPC version
  --restore-height arg (=0)             Restore from specific blockchain height
  --restore-date arg                    Restore from estimated blockchain
                                        height on specified date
  --do-not-relay                        The newly created transaction will not
                                        be relayed to the monero network
  --create-address-file                 Create an address file for new wallets
  --subaddress-lookahead arg            Set subaddress lookahead sizes to
                                        <major>:<minor>
  --use-english-language-names          Display English language names
  --rpc-client-secret-key arg           Set RPC client secret key for RPC
                                        payments
  --log-file arg                        Specify log file
  --log-level arg                       0-4 or categories
  --max-log-file-size arg (=104850000)  Specify maximum log file size [B]
  --max-log-files arg (=50)             Specify maximum number of rotated log
                                        files to be saved (no limit by setting
                                        to 0)
  --max-concurrency arg (=0)            Max number of threads to use for a
                                        parallel job
  --config-file arg                     Config file