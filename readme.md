## Note the current geth and pupeth (1.8.2) are OsX binaries, if you want to use with another Os,please replace them with the suitable binaries for your Os  

* In PoA, only authorized miners(assume total N miners) can seal the blocks and get block rewards
* In PoA, authorized miners are defined in genesis block(by genesis.json). This file can be genrated by `pupeth` and choose (Clique mode)
* PoA Clique require (N div 2 + 1) authorized miners to confirm the block.That means, you have to clone N/2 + 1 node (Each node stick with 1 authorized miner account) to run ethereum PoA. For example , If you setup 3 authorized miners in the genesis.json --> you should have 3 div 2 + 1 = 2 node online ( each node stick with one miners account) to confirm Txs and seal new block. 
* In PoA,The miner accounts must be available before in keystore, and user must unlock the miners account before starting mining( by passwords)
* This repo using geth https://gethstore.blob.core.windows.net/builds/geth-linux-amd64-1.8.2-b8b9f7f4.tar.gz

PrvKey Account 1 ( after genesis)
319FF6D750413E02B2754FC163D83513878DBC1D06815CCB2EB00A983887EF53
