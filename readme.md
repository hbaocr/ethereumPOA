##Note

* In PoA, only authorized miners(assume total N miners) can seal the blocks and get block rewards
* In PoA, authorized miners are defined in genesis block(by genesis.json). This file can be genrated by `pupeth` and choose (Clique mode)
* PoA Clique require (N div 2 + 1) authorized miners to confirm the block.That means, you have to clone N/2 + 1 node (Each node stick with authorized miner accounts) to run ethereum PoA.
* In PoA,The miner accounts must be available before in keystore, and user must unlock the miners account before starting mining( by passwords)
