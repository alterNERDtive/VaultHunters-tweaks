# Vault Hunters 3ʳᵈ Edition Tweaks

This is a compilation of configuration changes I have made to my personal [Vault
Hunters](https://vaulthunters.gg) instance. As I like making stuff I do
available to the public, so is this. For free, as usual.

Of course you can still [sponsor me on
Github](https://github.com/sponsors/alterNERDtive) or [buy me a
Ko-fi](https://ko-fi.com/S6S1DLYBS).

_Currently confirmed working on patch_: __8.0.3__

## Installation

1. Clone or download this.
2. Copy the `config` and `scripts` folders into your instance’s `minecraft`
   folder, or however that one is called in the launcher you are using.
3. Either _remove `scripts/ChunkLoaders.zs`_ or install the
   [Chunk Loaders mod](https://www.curseforge.com/minecraft/mc-mods/chunk-loaders)
   and _update_ “SuperMartijn642's Core Lib” and “Trash Cans” to their latest
   versions.
4. Either _remove `scripts/SophisticatedStorage.zs`_ or install the
   [Sophisticated Storage](https://www.curseforge.com/minecraft/mc-mods/sophisticated-storage)
   and [Crafting Station](https://www.curseforge.com/minecraft/mc-mods/crafting-station)
   mods.
5. Either _remove `scripts/ae2addons.zs`_ or install the
   [Applied Botanics](https://www.curseforge.com/minecraft/mc-mods/applied-botanics-addon),
   [Applied Mekanistics](https://www.curseforge.com/minecraft/mc-mods/applied-mekanistics),
   [AE2 Things](https://www.curseforge.com/minecraft/mc-mods/ae2things) and
   [ME Requester](https://www.curseforge.com/minecraft/mc-mods/merequester)
   mods.

## Upgrading to a New Vault Hunters Version

1. __WAIT UNTIL I HAD A CHANCE TO UPDATE THE FILES__. Yes, that is important,
   since I need to manually check if anything has changed in all files that I
   have modified; otherwise you might break things.
2. Pull or download this.
3. Copy files again.
4. Either _remove `scripts/ChunkLoaders.zs`_ or install the
   [Chunk Loaders mod](https://www.curseforge.com/minecraft/mc-mods/chunk-loaders)
   and _update_ “SuperMartijn642's Core Lib” and “Trash Cans” to their latest
   versions, again.
5. Either _remove `scripts/SophisticatedStorage.zs`_ or install the
   [Sophisticated Storage](https://www.curseforge.com/minecraft/mc-mods/sophisticated-storage)
   and [Crafting Station](https://www.curseforge.com/minecraft/mc-mods/crafting-station)
   mods.
6. Either _remove `scripts/ae2addons.zs`_ or install the
   [Applied Botanics](https://www.curseforge.com/minecraft/mc-mods/applied-botanics-addon),
   [Applied Mekanistics](https://www.curseforge.com/minecraft/mc-mods/applied-mekanistics),
   [AE2 Things](https://www.curseforge.com/minecraft/mc-mods/ae2things)
   [ME Requester](https://www.curseforge.com/minecraft/mc-mods/merequester)
   mods.

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
* Vault compass can once again be put in a backpack. The exploit that prompted
  the ban has been fixed, the ban not lifted.
* Totems of Undying stack in backpacks again. Since they no longer revive you,
  the unstackability is not necessary anymore.
* Removed the Automatic Genius requirement from AE2 crafting terminals.
* Made AE2 Wireless Terminal compatible with curio slots, like the crafting
  variant.
* Removed Simple Storage Network’s recipes.
* Fixed trailing comma, rendering wooden chest enhancement altar requirements
  invalid.

## QoL Changes

### Vault Portal

* Can now be built out of _any_ type of vault stone, including Bumbo Polished
  and Chiseled.
* Can now be built out of “Template Frames” created by an Extruder Mk2 router
  module. Because I want to build fancy things.

## Balance Changes

### Applied Energistics

* Lowered the cost of 64 and 256k storage components.

### Botania

* Re-enabled Crafty Crate, simply as an alternative to compacting drawers.
* Re-enabled Gaia Ingot because I was curious. Can probably get some OP stuff
  though.
* Re-enabled dirt and water rods in Vaults. Seriously, they are just worse
  versions of infinite Unobtainium + Infinite Water Bucket.
* Orechids can now create modded ores from Stone and Deepslate (script courtesy
  of Kaptainwutax via Tangofrags’ Discord).
* Re-enabled Redstone Fluxfield.

### Budding Crystal (Sky Vaults)

* Increased growth rate.

### Chunk Loaders

* Added the Chunk Loaders mod to the Weirding Gadgets research, complete with
  vaultified recipes.

### Easy Villagers

* “Vaultified” the recipes for Breeder, Converter and Incubator to bring them
  in line with the rest of the EV recipes.
* Made the Trader block available without an unlock. Eliminates villager AI
  issues and improves server performance.

### Gear Crafting

* Reverted the 10x proficiency gain nerf from a bunch of updates ago.
* Removed the cap on total proficiency.

### Hunter

* Halved cooldown times for all ranks.

### JEI Integration

* Up-to-date version of Freud’s JEI integration script for vault mod stuff.
* Removed all the outdated / uncraftable / not yet implemented vault stuff.

### Jewels

* Max size lowered to 40.

### ME Requester

* Added the ME Requester mod (similar to what the RS Requester does).

### Modular Routers

* Re-enabled the player module. (Be __careful__ with this one. The vault mod
  does … weird things to your inventory when you die. Most things are fixed by
  relogging.)

### Mystery Eggs

* Added modded mob eggs to the mystery hostile egg:
  * Basalz (Thermal)
  * Blitz (Thermal)
  * Blizz (Thermal)
  * Wraith (Quark)
* Reduced chance for the worst offenders to show up.

### Pickarang/Flamarang

* Made significantly cheaper. Because fuck gating essential tools behind Echo
  POGs just because someone™ doesn’t like them.
* Made compressed blocks found in factory room mineable again. Yes, that
  enables cheese. But otherwise you couldn’t use it on some blocks found in raw
  vault quarries.

### Raw Vaults (Sky Vaults)

* Moved Nether room to lvl 0.
* Moved End room to lvl 20.

### Refined Storage

* Reverted some of the crafting recipe changes introduced in update 5.
* Lowered the cost of 64k storage parts.

### Relic Fragment

* Doubled the weight of \#5 fragments. Now all of them are equally likely to
  drop.

### Researches

* Lowered the research penalty in the “Production” category to +8.
* Raised the research cost of Automatic Genius to ~~10~~ 3. Might change again,
  not sure on the balancing of this one yet.
* Automatic Genius no longer requires unlocking everything else.
* Added research requirements for AE2 Things, AE 2 WTLib, Applied Botanics,
  Applied Mekanistics; if you do not run these mods, it shouldn’t have any
  effect.

### Scavenger Vaults

* Lowered the maximum amount of an item you might need across the board.

### Snapshot Modifiers (Beginner’s Grace, Casual mode, Afterlife, Phoenix)

* Removed gear durability damage penalty. I wish there was a way to bring “old”
  casual back, but there is not.

### Sophisticated Backpacks

* Re-enabled Jukebox Upgrade. Because why the fuck is that even disabled in the
  first place⁈

### Sophisticated Storage

* It’s in now! Recipes vaultified.
* Replaces SSN research.
* Includes the Crafting Station mod to have an equivalent to SSN’s Storage
  Request Table.
* Increased the upgrade slot count from 1/2/2/3/4 to 2/3/3/5/7 to match
  Backpacks. We want this to replace those for bulk storage, no?

### Soul Shards

* Increased drop rate of soul shards across the board.

### Spirit Extractor

* Lowered revival costs across the board.
* Lowered death scaling.

### Spore Blossom

* ~~added Botania transmutation recipes:~~
  * ~~Azalea → Flowering Azalea~~
  * ~~Flowering Azalea → Spore Blossom~~
  * ~~Spore Blossom → Azalea~~
* ~~added Phytogenic Insolator recipe~~

~~Currently the only way to farm Spore Blossoms is Botany Pots. That sucks.
Taking suggestions for other recipe ideas!~~

Those have been officially integrated into the mod pack! \o/

### Vault Altar

* Increased chance of getting a lucky recipe from 10% to 35%.

### Vault Diffuser

* Increased the payout for common scavenger items from 1 to 4.
