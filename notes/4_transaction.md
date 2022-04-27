## Transaction

A record of one account trying to send money to another account. A transaction object has multiple properties assigned to it mentioned below.

### Properties

| Name              | Definition                                                                                                                             |
| :---------------- | :------------------------------------------------------------------------------------------------------------------------------------- |
| nonce             | How many times the sender has sent a transaction                                                                                       |
| to                | Address of the account money is going to                                                                                               |
| value             | Amount of ether sent to the target                                                                                                     |
| gasPrice          | Amount of ether sender is willing to pay per unit gas to get this transaction processed                                                |
| startGas/gasLimit | Units of gas that this tyransaction can consume                                                                                        |
| v, r, s           | Cryptographic pieces of data that can be used to generate the sender's account address. It is generated from the sender's private key. |

### Steps

- Backends generates the transaction object for the network.
- The transaction object is signed by the sender's private key.
- The object is then sent tio the etherium network to be processed.
- The backend waits for the transaction to be processed.
- Success/Fail!

### Why Wait?

Transaction send to the network. It is sent to a node. The node has the entire copy of the blockchain and it has a lot of transactions to process simultainously. It is a lot of work.

These are present in a block and validation of this block takes a lot of time. The transaction is not processed until the block is processed. This process is called mining.

### Blocks

A block has a block number, nonce number, data and a hash. To store this block in a chain we have to mine it. Mining finds a number which is required for the new hash (having some target requirements eg. having 4 zeroes in front) it generates to be valid in the blockchain. Hash is a 64 bit number. This number is called the "Nonce" and it is a number that is incremented by one each time a transaction is sent to the network.

Each block has data which is a list of transactions. Each transaction has a sender, a receiver, a value, a gas price, a gas limit, a nonce, a v, r, s.

The first block only has the genesis block. The genesis block is the first block in the chain. It does not have any transaction send to some other account.

One change in a block will break the complete chain that is present after that block because each block also contains the hash of the previous block. To make the chain valid again we'll have to remine all the blocks after and including the block on all the peer networks that has that chain present. This is theoretically impossible to do.
