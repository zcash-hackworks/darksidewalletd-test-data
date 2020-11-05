# 200-block window around canopy activation, real testnet blocks

Testnet canopy activation height is 1028400. Started zcashd in testnet mode, then:

```
cd lightwalletd-repo/utils
./pullblocks.sh 1028400 1028600 >1028400-1028600.txt
```

(It's actually 201 blocks.)


canopy "sapling activation" is block `1013250.txt`

This are testnet blocks. 
Transactions are intended to be received and trial decrypted successfully by the following spending key

`secret-extended-key-test1qv2vf437qqqqpqpfc0arpv55ncq33p2p895hlcx0ra6d0g739v93luqdjpxun3kt050j9qnrqjyp8d7fdxgedfyxpjmuyha2ulxa6hmqvm2gnvuc3tvs3enpxwuz768qfkd286vr3jgyrgr5ddx2ukrdl95ak3tzqylzjeqw3pnmgtmwsvemrj3sk6vqgwxm9khlv46wccn33ayw52prr233ea069c9u8m3839dvw30sdf6k32xddhpte6p6qsuxval6usyh6lr55pgypkgtz` by deriving its incoming viewing key.

the resulting address for this is `ztestsapling12k9m98wmpjts2m56wc60qzhgsfvlpxcwah268xk5yz4h942sd58jy3jamqyxjwums6hw7kfa4cc`

the `pre-activation-txs` folder contains post activation incoming transactions.
the `post-activation-txs` folder contains post activation incoming transactions.