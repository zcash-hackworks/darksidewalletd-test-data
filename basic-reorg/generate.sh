#!/bin/bash
set -e

# This generates the input to `genblocks` to create block sets for testing small
# and large (more or less than 10 blocks) reorgs that don't involve any
# wallet-related transactions. Run this script then use `genblocks` (in
# lightwalletd) to generate the block file. This script should be run with
# the basic-reorg directory of this repository.

emptytx="0400008085202f8901950521a79e89ed418a4b506f42e9829739b1ca516d4c590bddb4465b4b347bb2000000006a4730440220142920f2a9240c5c64406668c9a16d223bd01db33a773beada7f9c9b930cf02b0220171cbee9232f9c5684eb918db70918e701b86813732871e1bec6fbfb38194f53012102975c020dd223263d2a9bfff2fa6004df4c07db9f01c531967546ef941e2fcfbffeffffff026daf9b00000000001976a91461af073e7679f06677c83aa48f205e4b98feb8d188ac61760356100000001976a91406f6b9a7e1525ee12fd77af9b94a54179785011b88ac4c880b007f880b000000000000000000000000"

# All-empty blocks for the before-reorg set.
# The current height is 663200.
rm -rf blocks
mkdir blocks
touch blocks/{663151..663200}.txt
cp 663150.txt before-reorg.txt
genblocks -start-height 663151 >>before-reorg.txt
rm blocks/*

# There's a reorg less-than-10 back from current height, plus a bunch of new blocks.
touch blocks/{663195..663250}.txt

# Reorg at height 663195.
echo $emptytx > blocks/663195.txt
genblocks -start-height 663195 >after-small-reorg.txt
rm blocks/*

touch blocks/{663180..663250}.txt

# Reorg at height 663180.
echo $emptytx > blocks/663180.txt
genblocks -start-height 663180 >after-large-reorg.txt

rm -r blocks
