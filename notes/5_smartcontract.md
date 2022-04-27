## Contracts

Account controlled by code, not by a human.

## Contract Account

| Field   | Description                               |
| ------- | ----------------------------------------- |
| balance | Amount of tokens in the account           |
| storage | Data storage for the contract eg. strings |
| code    | Raw machine code for the contract         |

General accounts can be accessed via any etherium network but smart contarct account are only present for a specific network.

On our computer we create source code for a contract and then we deploy it to a network. It creates a instance of a contract (a contract account) on a network. Relationship is similar to a class and an instance.

Solidity is specially made to create smart contracts. It is written in .sol files. It is a strongly typed language, similar to javascript.

Contract Definition -> Solidity Compiler -> Byte code ready for deployment, Application Binary Interface (ABI)

ABI -> Frontend interacts with this ABI (similar to API) to get required data. ABI interacts with byte code to get work done.

## Transaction vs Contract

The main diff b/w a money transaction and a smart contract creation transaction is that the "to" field is empty in a contract creation transaction.

Everything in "data" is exposed to the world. No way to secure.

Initial "value" i.e some amount of ether can be assigned to a contract while creation to do some work.
