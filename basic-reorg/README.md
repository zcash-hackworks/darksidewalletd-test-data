# basic-reorg

These block sets are for testing reorgs that don't involve any transactions
related to the wallet.

- `before-reorg.txt` contains real mainnet block 663150 followed by empty blocks 663151 to 663200.
- `after-small-reorg.txt` contains empty blocks 663195 to 663250, with
  a transaction in block 663195, so that that and all following blocks' hashes
  will be different, triggering a reorg.
  - `after-large-reorg.txt` contains empty blocks 663180 to 663250, except with
    a transaction in block 663180, so that a reorg is triggered at that height.
- `generate.sh` contains a script for generating the input directories to the
  `genblocks` tool, so that these block sets can be easily recreated or
  modified.
