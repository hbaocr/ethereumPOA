#!/bin/bash
#NodeKey gen by bootnode -genkey bootnode.key
#import miner : personal.importRawKey("E945893DE099593A98AE8F5831B93FA0F9FACF4A204D52AA1D960EF43B2B6176","12345678")
#!/bin/bash
#NodeKey gen by bootnode -genkey bootnode.key
#import miner : personal.importRawKey("E945893DE099593A98AE8F5831B93FA0F9FACF4A204D52AA1D960EF43B2B6176","12345678")
#File must be .txt aka plain text
#File must not have any extra characters, spaces, or lines.
#Key must be 32 bytes (64 characters).
# --bootnodes
#========Read bootnodes=======
filename="bootnode.txt"
touch $filename
BootnodeOptions=""
#read file
BootnodeOptions=$(<$filename)
echo "BootnodeOptions = $BootnodeOptions"
#########################################
./geth --networkid 122018  --nodekey "./nodedata/NodeIdDerived.key" --datadir "./nodedata" --cache 512 --port 30303 --rpc --rpcaddr "0.0.0.0"  --rpcport "8545" --rpccorsdomain "*"   --rpcapi "eth,miner,personal,net,web3,clique" --ws --wsaddr "0.0.0.0" --wsapi "eth,miner,personal,net,web3,clique" --wsorigins "*"  --targetgaslimit 4700000 --gasprice 0 --etherbase "0x4863828C08e95bf1a1128352BC022251C85eCfFd" --unlock "0x4863828C08e95bf1a1128352BC022251C85eCfFd" --password "./nodedata/minerAccoutPass.txt" --minerthreads 1 $BootnodeOptions
