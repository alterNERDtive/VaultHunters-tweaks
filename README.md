# Vault Hunters 3ʳᵈ Edition Tweaks

This is a compilation of configuration changes I have made to my personal [Vault
Hunters](https://vaulthunters.gg) instance. As I like making stuff I do
available to the public, so is this. For free, as usual.

Of course you can still [sponsor me on
Github](https://github.com/sponsors/alterNERDtive) or [buy me a
Ko-fi](https://ko-fi.com/S6S1DLYBS).

_Currently confirmed working on patch_: __7__

## Installation

1. Clone or download this.
2. Copy the `config` and `scripts` folders into your instance’s `minecraft`
   folder, or however that one is called in the launcher you are using.

## Upgrading to a New Vault Hunters Version

1. __WAIT UNTIL I HAD A CHANCE TO UPDATE THE FILES__. Yes, that is important,
   since I need to manually check if anything has changed in all files that I
   have modified; otherwise you might break things.
2. Pull or download this.
3. Copy files again.

## FAQ

__Q__: I don’t like how you changed the balance, it’s kind of cheating. Can you
give me the QoL changes only?

__A__: No. But you can figure out which files those are and only use them.

__Q__: Can you change some values for me? I’d like to do the balancing a little
differently!

__A__: No. Changing values once is trivial, doing it for 100 requests is
exhausting. Go over the files, fiddle for yourself (make a backup first). But
hey, I guess I’d do it if I got paid for it.

__Q__: How can I report issues?

__A__: Either open an issue here (preferred) or find me on the official Vault
Hunters Discord. For the latter, _DM me_ since discussing config changes that
affect the balance of the pack are not to be discussed there as per the server
rules.

## Fixes

* Fixed “Wild” having a significantly higher weight than the other negative
  modifiers past level 20.
* Notch Apples now banned in Vaults as intended.

## QoL Changes

### Vault Portal

* Can now be built out of _any_ type of vault stone, including Bumbo Polished
  and Chiseled.

### Pulverizer

* Added Dripstone Block → 2x Clay Ball as a recipe to Thermal’s Pulverizer.

## Balance Changes

### Botania

* Re-enabled Crafty Crate, simply as an alternative to compacting drawers.
* Re-enabled Gaia Ingot because I was curious. Can probably get some OP stuff
  though.
* Re-enabled dirt and water rods in Vaults. Seriously, they are just worse
  versions of infinite Unobtainium + Infinite Water Bucket.

### Bounty Table

* Lowered amount of ores required for mining bounties.

### Fluxnet

* Reverted crafting recipe changes introduced in update 5.

### Hunter

* Halved cooldown times for all ranks.

### Mystery Eggs

* Added modded mob eggs to the mystery hostile egg:
  * Wraith (Quark)
  * Basalz (Thermal)
  * Blizz (Thermal)
  * Blitz (Thermal)
* Added stoneling eggs to the mystery egg.
* Reduced chance for the worst offenders to show up.

### Refined Storage

* Reverted some of the crafting recipe changes introduced in update 5.

### Researches

* Lowered the research cost of Xnet to 2.
* Lowered the research penalty in the “Power” category to +2.
* Lowered the research penalty in the “Handling” category to +1.
* Lowered the research penalty in the “Big Mods” category to +8.
* Lowered the research penalty in the “Big Toys” category to +8.
* Lowered the research cost of Automatic Genius to 10.
  * Also removed the _need_ for automatic genius alltogether. I did not really
    want to do that, but then I realized that you need to unlock _all_
    prerequisite mods before you can get it.

### Scavenger Vaults

* Lowered the maximum amount of an item you might need across the board.

### Sophisticated Backpacks

* Re-enabled Jukebox Upgrade. Because why the fuck is that even disabled in the
  first place⁈

### Soul Shards

* Increased drop rate of soul shards across the board.

### Spirit Extractor

* Lowered revival costs across the board.
* Lowered death scaling.

### Vault Altar

* Increased chance of getting a lucky recipe from 10% to 35%.

### Vault Diffuser

* Increased the payout for common scavenger items from 1 to 4.


## Advanced Things You Can Do

__HERE BE DRAGONS__

If you don’t know what you are doing, do not do it. I will not support any of
your fuckups.

### Remove Map Restrictions in Vaults

1. Open `mods/the_vault-1.18.2-<version>.jar` as a Zip file.
2. Open `assets/the_vault/the_vault.integration.mixins.json` and remove the
   entries in the `"client": [],` row.
3. Save the file.
4. Save the jar.
