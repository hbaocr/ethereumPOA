## Note the current geth and pupeth (1.8.2) are OsX binaries, if you want to use with another Os,please replace them with the suitable binaries for your Os  

* In PoA, only authorized miners(assume total N miners) can seal the blocks and get block rewards
* In PoA, authorized miners are defined in genesis block(by genesis.json). This file can be genrated by `pupeth` and choose (Clique mode)
* PoA Clique require (N div 2 + 1) authorized miners to confirm the block.That means, you have to clone N/2 + 1 node (Each node stick with 1 authorized miner account) to run ethereum PoA. For example , If you setup 3 authorized miners in the genesis.json --> you should have 3 div 2 + 1 = 2 node online ( each node stick with one miners account) to confirm Txs and seal new block. 
* In PoA,The miner accounts must be available before in keystore, and user must unlock the miners account before starting mining( by passwords)
