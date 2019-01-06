#!/bin/bash
#NodeKey gen by bootnode -genkey bootnode.key
# sealer/miner acc from MINER_PRVK : 4863828C08e95bf1a1128352BC022251C85eCfFd
#import miner : personal.importRawKey("E945893DE099593A98AE8F5831B93FA0F9FACF4A204D52AA1D960EF43B2B6176","12345678")
#File must be .txt aka plain text
#File must not have any extra characters, spaces, or lines.
#Key must be 32 bytes (64 characters).
BOOTKEY_DERIVE="5aef0627b4dc3300d695bdcb9fb7e920f38c90aaa56d3e8313aa2b9da16d1c5a"
MINER_PRVK="E945893DE099593A98AE8F5831B93FA0F9FACF4A204D52AA1D960EF43B2B6176"
MINER_PASS_PHASE="12345678"

mkdir -p nodedata
./geth --datadir ./nodedata --cache 512 init medrecGenesis.json

echo '-------->import miner account prvkey--------->'
echo $MINER_PASS_PHASE>./nodedata/minerAccoutPass.txt
echo $MINER_PRVK>./nodedata/minerPrvKey.txt
echo $BOOTKEY_DERIVE>./nodedata/NodeIdDerived.key
./geth --datadir ./nodedata account import "./nodedata/minerPrvKey.txt"  --password "./nodedata/minerAccoutPass.txt" 
echo ">>>>Should coppy the address when the first time show to use as \"etherbase\"  in \"start_node.sh\" >>>>"
