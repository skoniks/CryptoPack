Dash Core Daemon version v18.0.1

Usage:  dashd [options]                     Start Dash Core Daemon

Options:

  -?
       Print this help message and exit

  -alertnotify=<cmd>
       Execute command when a relevant alert is received or we see a really
       long fork (%s in cmd is replaced by message)

  -assumevalid=<hex>
       If this block is in the chain assume that it and its ancestors are valid
       and potentially skip their script verification (0 to verify all,
       default:
       000000000000001af6e940e36cfc58573c71cce69eaa1f457164c395f31bd3be,
       testnet:
       00000067b30c1e082086bf9da8cf49344b90d8fda37b9051875c4c1420549b6f)

  -blockfilterindex=<type>
       Maintain an index of compact filters by block (default: 0, values:
       basic). If <type> is not supplied or if <type> = 1, indexes for
       all known types are enabled.

  -blocknotify=<cmd>
       Execute command when the best block changes (%s in cmd is replaced by
       block hash)

  -blockreconstructionextratxn=<n>
       Extra transactions to keep in memory for compact block reconstructions
       (default: 100)

  -blocksdir=<dir>
       Specify directory to hold blocks subdirectory for *.dat files (default:
       <datadir>)

  -blocksonly
       Whether to reject transactions from network peers. Automatic broadcast
       and rebroadcast of any transactions from inbound peers is
       disabled, unless '-whitelistforcerelay' is '1', in which case
       whitelisted peers' transactions will be relayed. RPC transactions
       are not affected. (default: 0)

  -conf=<file>
       Specify configuration file. Relative paths will be prefixed by datadir
       location. (default: dash.conf)

  -daemon
       Run in the background as a daemon and accept commands

  -datadir=<dir>
       Specify data directory

  -dbcache=<n>
       Maximum database cache size <n> MiB (4 to 16384, default: 300). In
       addition, unused mempool memory is shared for this cache (see
       -maxmempool).

  -debuglogfile=<file>
       Specify location of debug log file. Relative paths will be prefixed by a
       net-specific datadir location. (-nodebuglogfile to disable;
       default: debug.log)

  -includeconf=<file>
       Specify additional configuration file, relative to the -datadir path
       (only useable from configuration file, not command line)

  -loadblock=<file>
       Imports blocks from external blk000??.dat file on startup

  -maxmempool=<n>
       Keep the transaction memory pool below <n> megabytes (default: 300)

  -maxorphantxsize=<n>
       Maximum total size of all orphan transactions in megabytes (default: 10)

  -maxrecsigsage=<n>
       Number of seconds to keep LLMQ recovery sigs (default: 604800)

  -mempoolexpiry=<n>
       Do not keep transactions in the mempool longer than <n> hours (default:
       336)

  -par=<n>
       Set the number of script verification threads (-32 to 15, 0 = auto, <0 =
       leave that many cores free, default: 0)

  -persistmempool
       Whether to save the mempool on shutdown and load on restart (default: 1)

  -pid=<file>
       Specify pid file. Relative paths will be prefixed by a net-specific
       datadir location. (default: dashd.pid)

  -prune=<n>
       Reduce storage requirements by enabling pruning (deleting) of old
       blocks. This allows the pruneblockchain RPC to be called to
       delete specific blocks, and enables automatic pruning of old
       blocks if a target size in MiB is provided. This mode is
       incompatible with -txindex, -rescan and -disablegovernance=false.
       Warning: Reverting this setting requires re-downloading the
       entire blockchain. (default: 0 = disable pruning blocks, 1 =
       allow manual pruning via RPC, >945 = automatically prune block
       files to stay under the specified target size in MiB)

  -syncmempool
       Sync mempool from other nodes on start (default: 1)

  -sysperms
       Create new files with system default permissions, instead of umask 077
       (only effective with disabled wallet functionality)

  -version
       Print version and exit

Connection options:

  -addnode=<ip>
       Add a node to connect to and attempt to keep the connection open (see
       the `addnode` RPC command help for more info). This option can be
       specified multiple times to add multiple nodes.

  -allowprivatenet
       Allow RFC1918 addresses to be relayed and connected to (default: 0)

  -asmap=<file>
       Specify asn mapping used for bucketing of the peers (default:
       ip_asn.map). Relative paths will be prefixed by the net-specific
       datadir location.

  -banscore=<n>
       Threshold for disconnecting misbehaving peers (default: 100)

  -bantime=<n>
       Number of seconds to keep misbehaving peers from reconnecting (default:
       86400)

  -bind=<addr>
       Bind to given address and always listen on it. Use [host]:port notation
       for IPv6

  -connect=<ip>
       Connect only to the specified node; -noconnect disables automatic
       connections (the rules for this peer are the same as for
       -addnode). This option can be specified multiple times to connect
       to multiple nodes.

  -discover
       Discover own IP addresses (default: 1 when listening and no -externalip
       or -proxy)

  -dns
       Allow DNS lookups for -addnode, -seednode and -connect (default: 1)

  -dnsseed
       Query for peer addresses via DNS lookup, if low on addresses (default: 1
       unless -connect used)

  -enablebip61
       Send reject messages per BIP61 (default: 1)

  -externalip=<ip>
       Specify your own public address

  -forcednsseed
       Always query for peer addresses via DNS lookup (default: 0)

  -listen
       Accept connections from outside (default: 1 if no -proxy or -connect)

  -listenonion
       Automatically create Tor hidden service (default: 1)

  -maxconnections=<n>
       Maintain at most <n> connections to peers (temporary service connections
       excluded) (default: 125)

  -maxreceivebuffer=<n>
       Maximum per-connection receive buffer, <n>*1000 bytes (default: 5000)

  -maxsendbuffer=<n>
       Maximum per-connection send buffer, <n>*1000 bytes (default: 1000)

  -maxtimeadjustment
       Maximum allowed median peer time offset adjustment. Local perspective of
       time may be influenced by peers forward or backward by this
       amount. (default: 4200 seconds)

  -maxuploadtarget=<n>
       Tries to keep outbound traffic under the given target (in MiB per 24h),
       0 = no limit (default: 0)

  -natpmp
       Use NAT-PMP to map the listening port (default: 0)

  -onion=<ip:port>
       Use separate SOCKS5 proxy to reach peers via Tor hidden services, set
       -noonion to disable (default: -proxy)

  -onlynet=<net>
       Make outgoing connections only through network <net> (ipv4, ipv6 or
       onion). Incoming connections are not affected by this option.
       This option can be specified multiple times to allow multiple
       networks.

  -peerblockfilters
       Serve compact block filters to peers per BIP 157 (default: 0)

  -peerbloomfilters
       Support filtering of blocks and transaction with bloom filters (default:
       1)

  -peertimeout=<n>
       Specify p2p connection timeout in seconds. This option determines the
       amount of time a peer may be inactive before the connection to it
       is dropped. (minimum: 1, default: 60)

  -permitbaremultisig
       Relay non-P2SH multisig (default: 1)

  -port=<port>
       Listen for connections on <port> (default: 9999, testnet: 19999,
       regtest: 19899)

  -proxy=<ip:port>
       Connect through SOCKS5 proxy, set -noproxy to disable (default:
       disabled)

  -proxyrandomize
       Randomize credentials for every proxy connection. This enables Tor
       stream isolation (default: 1)

  -seednode=<ip>
       Connect to a node to retrieve peer addresses, and disconnect. This
       option can be specified multiple times to connect to multiple
       nodes.

  -socketevents=<mode>
       Socket events mode, which must be one of 'select', 'poll', 'epoll' or
       'kqueue', depending on your system (default: Linux - 'epoll',
       FreeBSD/Apple - 'kqueue', Windows - 'select')

  -timeout=<n>
       Specify connection timeout in milliseconds (minimum: 1, default: 5000)

  -torcontrol=<ip>:<port>
       Tor control port to use if onion listening enabled (default:
       127.0.0.1:9051)

  -torpassword=<pass>
       Tor control port password (default: empty)

  -upnp
       Use UPnP to map the listening port (default: 0)

  -whitebind=<[permissions@]addr>
       Bind to given address and whitelist peers connecting to it. Use
       [host]:port notation for IPv6. Allowed permissions are
       bloomfilter (allow requesting BIP37 filtered blocks and
       transactions), noban (do not ban for misbehavior), forcerelay
       (relay even non-standard transactions), relay (relay even in
       -blocksonly mode), and mempool (allow requesting BIP35 mempool
       contents). Specify multiple permissions separated by commas
       (default: noban,mempool,relay). Can be specified multiple times.

  -whitelist=<[permissions@]IP address or network>
       Whitelist peers connecting from the given IP address (e.g. 1.2.3.4) or
       CIDR notated network(e.g. 1.2.3.0/24). Uses same permissions as
       -whitebind. Can be specified multiple times.

Indexing options:

  -addressindex
       Maintain a full address index, used to query for the balance, txids and
       unspent outputs for addresses (default: 0)

  -reindex
       Rebuild chain state and block index from the blk*.dat files on disk

  -reindex-chainstate
       Rebuild chain state from the currently indexed blocks. When in pruning
       mode or if blocks on disk might be corrupted, use full -reindex
       instead.

  -spentindex
       Maintain a full spent index, used to query the spending txid and input
       index for an outpoint (default: 0)

  -timestampindex
       Maintain a timestamp index for block hashes, used to query blocks hashes
       by a range of timestamps (default: 0)

  -txindex
       Maintain a full transaction index, used by the getrawtransaction rpc
       call (default: 1)

Masternode options:

  -llmq-data-recovery=<n>
       Enable automated quorum data recovery (default: 1)

  -llmq-qvvec-sync=<quorum_name>:<mode>
       Defines from which LLMQ type the masternode should sync quorum
       verification vectors. Can be used multiple times with different
       LLMQ types. <mode>: 0 (sync always from all quorums of the type
       defined by <quorum_name>), 1 (sync from all quorums of the type
       defined by <quorum_name> if a member of any of the quorums)

  -masternodeblsprivkey=<hex>
       Set the masternode BLS private key and enable the client to act as a
       masternode

  -platform-user=<user>
       Set the username for the "platform user", a restricted user intended to
       be used by Dash Platform, to the specified username.

Statsd options:

  -statsenabled
       Publish internal stats to statsd (default: 0)

  -statshost=<ip>
       Specify statsd host (default: 127.0.0.1)

  -statshostname=<ip>
       Specify statsd host name (default: )

  -statsns=<ns>
       Specify additional namespace prefix (default: )

  -statsperiod=<seconds>
       Specify the number of seconds between periodic measurements (default:
       60)

  -statsport=<port>
       Specify statsd port (default: 8125)

Wallet options:

  -avoidpartialspends
       Group outputs by address, selecting all or none, instead of selecting on
       a per-output basis. Privacy is improved as an address is only
       used once (unless someone sends to it after spending from it),
       but may result in slightly higher fees as suboptimal coin
       selection may result due to the added limitation (default: 0)

  -createwalletbackups=<n>
       Number of automatic wallet backups (default: 10)

  -disablewallet
       Do not load the wallet and disable wallet RPC calls

  -instantsendnotify=<cmd>
       Execute command when a wallet InstantSend transaction is successfully
       locked (%s in cmd is replaced by TxID)

  -keypool=<n>
       Set key pool size to <n> (default: 1000)

  -rescan=<mode>
       Rescan the block chain for missing wallet transactions on startup (1 =
       start from wallet creation time, 2 = start from genesis block)

  -spendzeroconfchange
       Spend unconfirmed change when sending transactions (default: 1)

  -upgradewallet
       Upgrade wallet to latest format on startup

  -wallet=<path>
       Specify wallet database path. Can be specified multiple times to load
       multiple wallets. Path is interpreted relative to <walletdir> if
       it is not absolute, and will be created if it does not exist (as
       a directory containing a wallet.dat file and log files). For
       backwards compatibility this will also accept names of existing
       data files in <walletdir>.)

  -walletbackupsdir=<dir>
       Specify full path to directory for automatic wallet backups (must exist)

  -walletbroadcast
       Make the wallet broadcast transactions (default: 1)

  -walletdir=<dir>
       Specify directory to hold wallets (default: <datadir>/wallets if it
       exists, otherwise <datadir>)

  -walletnotify=<cmd>
       Execute command when a wallet transaction changes (%s in cmd is replaced
       by TxID)

  -zapwallettxes=<mode>
       Delete all wallet transactions and only recover those parts of the
       blockchain through -rescan on startup (1 = keep tx meta data e.g.
       payment request information, 2 = drop tx meta data)

Wallet fee options:

  -discardfee=<amt>
       The fee rate (in DASH/kB) that indicates your tolerance for discarding
       change by adding it to the fee (default: 0.0001). Note: An output
       is discarded if it is dust at this rate, but we will always
       discard up to the dust relay fee and a discard fee above that is
       limited by the fee estimate for the longest target

  -fallbackfee=<amt>
       A fee rate (in DASH/kB) that will be used when fee estimation has
       insufficient data (default: 0.00001)

  -mintxfee=<amt>
       Fees (in DASH/kB) smaller than this are considered zero fee for
       transaction creation (default: 0.00001)

  -paytxfee=<amt>
       Fee (in DASH/kB) to add to transactions you send (default: 0.00)

  -txconfirmtarget=<n>
       If paytxfee is not set, include enough fee so transactions begin
       confirmation on average within n blocks (default: 6)

HD wallet options:

  -hdseed=<hex>
       User defined seed for HD wallet (should be in hex). Only has effect
       during wallet creation/first start (default: randomly generated)

  -mnemonic=<text>
       User defined mnemonic for HD wallet (bip39). Only has effect during
       wallet creation/first start (default: randomly generated)

  -mnemonicpassphrase=<text>
       User defined mnemonic passphrase for HD wallet (BIP39). Only has effect
       during wallet creation/first start (default: empty string)

  -usehd
       Use hierarchical deterministic key generation (HD) after BIP39/BIP44.
       Only has effect during wallet creation/first start (default: 0)

CoinJoin options:

  -coinjoinamount=<n>
       Target CoinJoin balance (2-21000000, default: 1000)

  -coinjoinautostart
       Start CoinJoin automatically (0-1, default: 0)

  -coinjoindenomsgoal=<n>
       Try to create at least N inputs of each denominated amount (10-100000,
       default: 50)

  -coinjoindenomshardcap=<n>
       Create up to N inputs of each denominated amount (10-100000, default:
       300)

  -coinjoinmultisession
       Enable multiple CoinJoin mixing sessions per block, experimental (0-1,
       default: 0)

  -coinjoinrounds=<n>
       Use N separate masternodes for each denominated input to mix funds
       (2-16, default: 4)

  -coinjoinsessions=<n>
       Use N separate masternodes in parallel to mix funds (1-10, default: 4)

  -enablecoinjoin
       Enable use of CoinJoin for funds stored in this wallet (0-1, default: 0)

ZeroMQ notification options:

  -zmqpubhashblock=<address>
       Enable publish hash block in <address>

  -zmqpubhashblockhwm=<n>
       Set publish hash block outbound message high water mark (default: 1000)

  -zmqpubhashchainlock=<address>
       Enable publish hash block (locked via ChainLocks) in <address>

  -zmqpubhashchainlockhwm=<n>
       Set publish hash chain lock outbound message high water mark (default:
       1000)

  -zmqpubhashgovernanceobject=<address>
       Enable publish hash of governance objects (like proposals) in <address>

  -zmqpubhashgovernanceobjecthwm=<n>
       Set publish hash governance object outbound message high water mark
       (default: 1000)

  -zmqpubhashgovernancevote=<address>
       Enable publish hash of governance votes in <address>

  -zmqpubhashgovernancevotehwm=<n>
       Set publish hash governance vote outbound message high water mark
       (default: 1000)

  -zmqpubhashinstantsenddoublespend=<address>
       Enable publish transaction hashes of attempted InstantSend double spend
       in <address>

  -zmqpubhashinstantsenddoublespendhwm=<n>
       Set publish hash InstantSend double spend outbound message high water
       mark (default: 1000)

  -zmqpubhashrecoveredsig=<address>
       Enable publish message hash of recovered signatures (recovered by LLMQs)
       in <address>

  -zmqpubhashrecoveredsighwm=<n>
       Set publish hash recovered signature outbound message high water mark
       (default: 1000)

  -zmqpubhashtx=<address>
       Enable publish hash transaction in <address>

  -zmqpubhashtxhwm=<n>
       Set publish hash transaction outbound message high water mark (default:
       1000)

  -zmqpubhashtxlock=<address>
       Enable publish hash transaction (locked via InstantSend) in <address>

  -zmqpubhashtxlockhwm=<n>
       Set publish hash transaction lock outbound message high water mark
       (default: 1000)

  -zmqpubrawblock=<address>
       Enable publish raw block in <address>

  -zmqpubrawblockhwm=<n>
       Set publish raw block outbound message high water mark (default: 1000)

  -zmqpubrawchainlock=<address>
       Enable publish raw block (locked via ChainLocks) in <address>

  -zmqpubrawchainlockhwm=<n>
       Set publish raw chain lock outbound message high water mark (default:
       1000)

  -zmqpubrawchainlocksig=<address>
       Enable publish raw block (locked via ChainLocks) and CLSIG message in
       <address>

  -zmqpubrawchainlocksighwm=<n>
       Set publish raw chain lock signature outbound message high water mark
       (default: 1000)

  -zmqpubrawgovernanceobject=<address>
       Enable publish raw governance votes in <address>

  -zmqpubrawgovernanceobjecthwm=<n>
       Set publish raw governance object outbound message high water mark
       (default: 1000)

  -zmqpubrawgovernancevote=<address>
       Enable publish raw governance objects (like proposals) in <address>

  -zmqpubrawgovernancevotehwm=<n>
       Set publish raw governance vote outbound message high water mark
       (default: 1000)

  -zmqpubrawinstantsenddoublespend=<address>
       Enable publish raw transactions of attempted InstantSend double spend in
       <address>

  -zmqpubrawinstantsenddoublespendhwm=<n>
       Set publish raw InstantSend double spend outbound message high water
       mark (default: 1000)

  -zmqpubrawrecoveredsig=<address>
       Enable publish raw recovered signatures (recovered by LLMQs) in
       <address>

  -zmqpubrawrecoveredsighwm=<n>
       Set publish raw recovered signature outbound message high water mark
       (default: 1000)

  -zmqpubrawtx=<address>
       Enable publish raw transaction in <address>

  -zmqpubrawtxhwm=<n>
       Set publish raw transaction outbound message high water mark (default:
       1000)

  -zmqpubrawtxlock=<address>
       Enable publish raw transaction (locked via InstantSend) in <address>

  -zmqpubrawtxlockhwm=<n>
       Set publish raw transaction lock outbound message high water mark
       (default: 1000)

  -zmqpubrawtxlocksig=<address>
       Enable publish raw transaction (locked via InstantSend) and ISLOCK in
       <address>

  -zmqpubrawtxlocksighwm=<n>
       Set publish raw transaction lock signature outbound message high water
       mark (default: 1000)

Debugging/Testing options:

  -debug=<category>
       Output debugging information (default: -nodebug, supplying <category> is
       optional). If <category> is not supplied or if <category> = 1,
       output all debugging information. <category> can be: net, tor,
       mempool, http, bench, zmq, walletdb, rpc, estimatefee, addrman,
       selectcoins, reindex, cmpctblock, rand, prune, proxy, mempoolrej,
       libevent, coindb, qt, leveldb, chainlocks, gobject, instantsend,
       llmq, llmq-dkg, llmq-sigs, mnpayments, mnsync, coinjoin, spork,
       netconn.

  -debugexclude=<category>
       Exclude debugging information for a category. Can be used in conjunction
       with -debug=1 to output debug logs for all categories except one
       or more specified categories.

  -disablegovernance
       Disable governance validation (0-1, default: 0)

  -help-debug
       Print help message with debugging options and exit

  -logips
       Include IP addresses in debug output (default: 0)

  -logtimestamps
       Prepend debug output with timestamp (default: 1)

  -maxtxfee=<amt>
       Maximum total fees (in DASH) to use in a single wallet transaction;
       setting this too low may abort large transactions (default: 0.10)

  -minsporkkeys=<n>
       Overrides minimum spork signers to change spork value. Only useful for
       regtest and devnet. Using this on mainnet or testnet will ban
       you.

  -printtoconsole
       Send trace/debug info to console (default: 1 when no -daemon. To disable
       logging to file, set -nodebuglogfile)

  -pushversion
       Protocol version to report to other nodes

  -shrinkdebugfile
       Shrink debug.log file on client startup (default: 1 when no -debug)

  -sporkaddr=<dashaddress>
       Override spork address. Only useful for regtest and devnet. Using this
       on mainnet or testnet will ban you.

  -sporkkey=<privatekey>
       Set the private key to be used for signing spork messages.

  -uacomment=<cmt>
       Append comment to the user agent string

Chain selection options:

  -devnet=<name>
       Use devnet chain with provided name

  -highsubsidyblocks=<n>
       The number of blocks with a higher than normal subsidy to mine at the
       start of a chain (default: 0, devnet-only)

  -highsubsidyfactor=<n>
       The factor to multiply the normal block subsidy by while in the
       highsubsidyblocks window of a chain (default: 1, devnet-only)

  -llmqchainlocks=<quorum name>
       Override the default LLMQ type used for ChainLocks. Allows using
       ChainLocks with smaller LLMQs. (default: llmq_50_60, devnet-only)

  -llmqdevnetparams=<size>:<threshold>
       Override the default LLMQ size for the LLMQ_DEVNET quorum (default: 3:2,
       devnet-only)

  -llmqinstantsend=<quorum name>
       Override the default LLMQ type used for InstantSend. Allows using
       InstantSend with smaller LLMQs. (default: llmq_50_60,
       devnet-only)

  -llmqinstantsenddip0024=<quorum name>
       Override the default LLMQ type used for InstantSendDIP0024. (default:
       llmq_60_75, devnet-only)

  -minimumdifficultyblocks=<n>
       The number of blocks that can be mined with the minimum difficulty at
       the start of a chain (default: 0, devnet-only)

  -powtargetspacing=<n>
       Override the default PowTargetSpacing value in seconds (default: 2.5
       minutes, devnet-only)

  -testnet
       Use the test chain

Node relay options:

  -bytespersigop
       Equivalent bytes per sigop in transactions for relay and mining
       (default: 20)

  -datacarrier
       Relay and mine data carrier transactions (default: 1)

  -datacarriersize
       Maximum size of data in data carrier transactions we relay and mine
       (default: 83)

  -minrelaytxfee=<amt>
       Fees (in DASH/kB) smaller than this are considered zero fee for
       relaying, mining and transaction creation (default: 0.00001)

  -whitelistforcerelay
       Add 'forcerelay' permission to whitelisted inbound peers with default
       permissions. This will relay transactions even if the
       transactions were already in the mempool or violate local relay
       policy. (default: 0)

  -whitelistrelay
       Add 'relay' permission to whitelisted inbound peers with default
       permissions. This will accept relayed transactions even when not
       relaying transactions (default: 1)

Block creation options:

  -blockmaxsize=<n>
       Set maximum block size in bytes (default: 2000000)

  -blockmintxfee=<amt>
       Set lowest fee rate (in DASH/kB) for transactions to be included in
       block creation. (default: 0.00001)

RPC server options:

  -rest
       Accept public REST requests (default: 0)

  -rpcallowip=<ip>
       Allow JSON-RPC connections from specified source. Valid for <ip> are a
       single IP (e.g. 1.2.3.4), a network/netmask (e.g.
       1.2.3.4/255.255.255.0) or a network/CIDR (e.g. 1.2.3.4/24). This
       option can be specified multiple times

  -rpcauth=<userpw>
       Username and HMAC-SHA-256 hashed password for JSON-RPC connections. The
       field <userpw> comes in the format: <USERNAME>:<SALT>$<HASH>. A
       canonical python script is included in share/rpcuser. The client
       then connects normally using the
       rpcuser=<USERNAME>/rpcpassword=<PASSWORD> pair of arguments. This
       option can be specified multiple times

  -rpcbind=<addr>[:port]
       Bind to given address to listen for JSON-RPC connections. Do not expose
       the RPC server to untrusted networks such as the public internet!
       This option is ignored unless -rpcallowip is also passed. Port is
       optional and overrides -rpcport. Use [host]:port notation for
       IPv6. This option can be specified multiple times (default:
       127.0.0.1 and ::1 i.e., localhost, or if -rpcallowip has been
       specified, 0.0.0.0 and :: i.e., all addresses)

  -rpccookiefile=<loc>
       Location of the auth cookie. Relative paths will be prefixed by a
       net-specific datadir location. (default: data dir)

  -rpcpassword=<pw>
       Password for JSON-RPC connections

  -rpcport=<port>
       Listen for JSON-RPC connections on <port> (default: 9998, testnet:
       19998, regtest: 19898)

  -rpcthreads=<n>
       Set the number of threads to service RPC calls (default: 4)

  -rpcuser=<user>
       Username for JSON-RPC connections

  -server
       Accept command line and JSON-RPC commands
