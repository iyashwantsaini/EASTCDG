## Types of Functions

| Calling a function (Getters)                      | Sending a transaction (Setters) |
| ------------------------------------------------- | ------------------------------- |
| Cannot modify contract's data (storage variables) | Can modify contract's data      |
| Can return data                                   | Takes time to execute           |
| Runs instantly                                    | Returns the transaction hash    |
| Free to do                                        | Costs Money                     |

- Transaction functions also lets us send some return value but we dont get that value back as it only returns a hash.
- Only those operations happen during a transaction for which we have enough gas to execute.
- If we dont have enough gas to execute the transaction, the transaction will fail.
