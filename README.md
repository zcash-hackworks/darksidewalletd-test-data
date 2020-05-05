# darksidewalletd-test-data
Test files (sample blocks and transactions) for full-suite integration zcash/lightwalletd-wallet tests

## Directory Structure

The block sets contained in this repository are organized as follows:

- Related block sets should live in the same directory. The directory name
  should indicate the type of testing that the block sets are useful for, e.g.
  `basic-reorg` for basic reorg testing.
- Inside the directory, there should be one or more `.txt` files containing the
  block sets. There will usually be multiple block sets for reorg tests (before
  the reorg, after the reorg). The filenames should indicate what the blocks are
  useful for.
- If the block sets were generated using the `genblocks` tool in `lightwalletd`,
  then there should be a `generate.sh` script for re-recreating the input to
  `genblocks`. This will save everyone time if the block sets need to be
  regenerated or modified.
