# Shield funds integration testing

This dataset is intended to help you test shielding funds. 
Block `1631000` is extracted from mainnet as a starting point.

Put the UTXO on `utxo-1631177.json`using the 
`/cash.z.wallet.sdk.rpc.DarksideStreamer/AddAddressUtxo` RPC then
you should sync up to `1631177`. 

After confirming the funds you should be able to shield those funds and
stage the resulting transaction in block `1631178`. Stage ten blocks
more and you should be seeing your shielded funds minus on your balance.
