#!/bin/bash
set -e

# See https://github.com/zcash/lightwalletd/issues/263
#
# This generates the input to `genblocks` to create block sets for
# this test, which is two transactions mined into a block, then a
# reorg happens and the same two transactions are mined into a new
# version of the same-height block but in reverse order (so their
# index values have changed).
#
# The two transactions used here were copied from ../transactions;
# see that directory for how to reproduce them.

# We need to use the real mainnet version of 663150, so build a
# blockchain based on that block.
rm -rf blocks
mkdir blocks
touch blocks/{663151..663200}.txt

# Add two transactions to height 663195, first shielded, then transparent
cat ../transactions/tx-8f064d23.txt t1.txt > blocks/663195.txt

# Generate the blockchain
cp 663150.txt before-reorg.txt
genblocks -start-height 663151 >> before-reorg.txt

# now reverse the order of the tx in the same block
cat t1.txt ../transactions/tx-8f064d23.txt > blocks/663195.txt
genblocks -start-height 663195 > after-reorg.txt

rm -r blocks
