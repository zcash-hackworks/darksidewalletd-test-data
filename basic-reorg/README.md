# basic-reorg

These block sets are for testing reorgs that don't involve any transactions
related to the wallet.

- `before-reorg.txt` contains empty blocks 663151 to 663200.
- `after-small-reorg.txt` contains empty blocks 663151 to 663250, except with
  a transaction in block 663195, so that that and all following blocks' hashes
  will be different, triggering a reorg.
  - `after-large-reorg.txt` contains empty blocks 663151 to 663250, except with
    a transaction in block 663180, so that a reorg is triggered at that height.
- `generate.sh` contains a script for generating the input directories to the
  `genblocks` tool, so that these block sets can be easily recreated or
  modified.
