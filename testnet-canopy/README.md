# 200-block window around canopy activation, real testnet blocks

Testnet canopy activation height is 1028400. Started zcashd in testnet mode, then:

```
cd lightwalletd-repo/utils
./pullblocks.sh 1028400 1028600 >1028400-1028600.txt
```

(It's actually 201 blocks.)
