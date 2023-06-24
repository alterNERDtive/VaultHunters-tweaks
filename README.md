# Vault Hunters 3ʳᵈ Edition Tweaks

This is a compilation of configuration changes I have made to my personal [Vault
Hunters](https://vaulthunters.gg) instance. As I like making stuff I do
available to the public, so is this. For free, as usual.

Of course you can still [sponsor me on
Github](https://github.com/sponsors/alterNERDtive) or [buy me a
Ko-fi](https://ko-fi.com/S6S1DLYBS).

__In addition to the config changes in this repository I am and recommend 
running the accompanying mod__: https://git.alternerd.tv/the_vault-tweaks

I’m also running <https://github.com/radimous/SkinFighters>, 
<https://github.com/radimous/FastVaultGear> and 
<https://github.com/radimous/invhudmpfix>.

_Currently confirmed working on patch_: __10.1.0__

## Installation

1. Install the latest version of
   [the tweaks mod](https://git.alternerd.tv/the_vault-tweaks/releases/latest).
2. Clone or download this.
3. Copy the `config` and `scripts` folders into your instance’s `minecraft`
   folder, or however that one is called in the launcher you are using.
4. Either _remove `scripts/ChunkLoaders.zs`_ or install the
   [Chunk Loaders mod](https://www.curseforge.com/minecraft/mc-mods/chunk-loaders)
   and _update_ “SuperMartijn642's Core Lib” and “Trash Cans” to their latest
   versions.
5. Either _remove `scripts/SophisticatedStorage.zs`_ or install the
   [Sophisticated Storage](https://www.curseforge.com/minecraft/mc-mods/sophisticated-storage)
   and [Crafting Station](https://www.curseforge.com/minecraft/mc-mods/crafting-station)
   mods.
6. Either _remove `scripts/ae2addons.zs`_ or install the
   [Applied Botanics](https://www.curseforge.com/minecraft/mc-mods/applied-botanics-addon),
   [Applied Mekanistics](https://www.curseforge.com/minecraft/mc-mods/applied-mekanistics),
   [AE2 Things](https://www.curseforge.com/minecraft/mc-mods/ae2things) and
   [ME Requester](https://www.curseforge.com/minecraft/mc-mods/merequester)
   mods.
7. Either _remove `scripts/RFToolsUtility.zs`_ or install the
   [RFTools Utility](https://www.curseforge.com/minecraft/mc-mods/rftools-utility)
   mod.

If you (or someone on your server) has unlocked Simple Storage Network or 
Weirding Gadgets, you’ll need to manually edit 
`data/the_vault_playerResearches.dat` and rename the unlocks. Otherwise you’ll 
be booted with an “Invalid player data” error.

There is a new config file for making this transition happen automatically 
(`config/the_vault/player_research_transfer.json`), but it does not seem to be 
functional yet.

## Upgrading to a New Vault Hunters Version

1. __WAIT UNTIL I HAD A CHANCE TO UPDATE THE FILES__. Yes, that is important,
   since I need to manually check if anything has changed in all files that I
   have modified; otherwise you might break things.
2. Install the latest version of
   [the tweaks mod](https://git.alternerd.tv/the_vault-tweaks/releases/latest).
3. Pull or download this.
4. Copy files again.
5. Either _remove `scripts/ChunkLoaders.zs`_ or install the
   [Chunk Loaders mod](https://www.curseforge.com/minecraft/mc-mods/chunk-loaders)
   and _update_ “SuperMartijn642's Core Lib” and “Trash Cans” to their latest
   versions, again.
6. Either _remove `scripts/SophisticatedStorage.zs`_ or install the
   [Sophisticated Storage](https://www.curseforge.com/minecraft/mc-mods/sophisticated-storage)
   and [Crafting Station](https://www.curseforge.com/minecraft/mc-mods/crafting-station)
   mods.
7. Either _remove `scripts/ae2addons.zs`_ or install the
   [Applied Botanics](https://www.curseforge.com/minecraft/mc-mods/applied-botanics-addon),
   [Applied Mekanistics](https://www.curseforge.com/minecraft/mc-mods/applied-mekanistics),
   [AE2 Things](https://www.curseforge.com/minecraft/mc-mods/ae2things)
   [ME Requester](https://www.curseforge.com/minecraft/mc-mods/merequester)
   mods.
8. Either _remove `scripts/RFToolsUtility.zs`_ or install the
   [RFTools Utility](https://www.curseforge.com/minecraft/mc-mods/rftools-utility)
   mod.

## FAQ

__Q__: I don’t like how you changed the balance, it’s kind of cheating. Can you
give me the QoL changes only?

__A__: No. But you can figure out which files those are and only use them, and 
the mod has client/server config files that allow toggling all its features.

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
* ~~Removed the Automatic Genius requirement from AE2 crafting terminals.~~ 
  Fixed in the official pack.
* Made AE2 Wireless Terminal compatible with curio slots, like the crafting
  variant.
* Removed Simple Storage Network’s recipes.
* Fixed trailing comma, rendering wooden chest enhancement altar requirements
  invalid.
* Pulverizing Stone → Gravel is now a thing. You want to use Silk Touch with 
  Pulverizing …
* ~~Mobs no longer have a chance to spawn with backpacks.~~ Fixed in the 
  official pack.
* ~~Made Sky Stone actually mineable in raw vaults.~~ Fixed in the official 
  pack.
* Reduced Mekanism QIO to 4 knowledge points like RS and AE2.
* ~~Lead Ingots now properly configured in the pool for Mekanism mod boxes; 
  would cause empty boxes before.~~ Fixed in the official pack.
* Added Uraninite Ore (Powah) to modded ore rooms in raw vaults.
* Fixed BCC version number for Update 10.1.
* The Digital Miner’s Stone Generator Upgrade now correctly requires the Digital 
  Miner research.

## Balance Changes

### Applied Energistics

* Lowered the cost of 64 and 256k storage components.
* Removed Chiseled Quartz / Quartz Pillars from the Energy Cell recipe. Just any 
  Quartz block now. Like, wtf where they even thinking doing that recipe⁈

### Botania

* Re-enabled Crafty Crate, simply as an alternative to compacting drawers.
* Re-enabled Gaia Ingot because I was curious. Can probably get some OP stuff
  though.
* Re-enabled dirt and water rods in Vaults. Seriously, they are just worse
  versions of infinite Unobtainium + Infinite Water Bucket.
* Orechids can now create modded ores from Stone and Deepslate (script courtesy
  of Kaptainwutax via Tangofrags’ Discord).
* ~~Re-enabled Redstone Fluxfield.~~ Now its own research in the official pack.
* Can now dupe Unobtanium. Why? Why not.

### Chunk Loaders

* Added the Chunk Loaders mod to the Weirding Gadgets research, complete with
  vaultified recipes.
* Re-enabled AE2’s Spatial Anchor recipe and added to the Chunk Loaders 
  research.

### Easy Villagers / Easy Piglins

* “Vaultified” the recipes for Breeder, Converter and Incubator to bring them
  in line with the rest of the EV recipes.
* Made the Trader block available without an unlock. Eliminates villager AI
  issues and improves server performance.
* Added Easy Piglins to the Easy Villagers research. Makes this slightly less of 
  a waste of points.

### Elixir Vaults

* Made glorp sizes more distinct.
* Made lvl 0–29 requirements slightly harder (25–33%).
* Made lvl 50+ requirements easier (~20%).
* Added lvl 75 tier with old lvl 50 requirements (this might or might not work 
  out of the box, testing needed).
* Buffed Wooden Chest tier 1 from 0–3 to 1–3. I don’t think loot should ever 
  give flat 0.
* Nerfed Coin Stack tiers from 0–3, 4 to 0–1, 2–3 to compensate; also should 
  alleviate the issue that they roll multiple times and dominate most Elixir 
  rolls.

Mobs can still roll 0 glorp; I don’t quite like that either, but changing it 
would require major rebalancing of the entire thing.

### Fortune and Vault Ores

* ~~Removed Vein Miner: Fortune.~~ Gone from the default pack.
* Removed the chance to roll 0 on breaking Vault Ores.

This removes the unfun mechanic of getting 0 off an ore. Still trying to find 
a way to make Fortune 3 act as Fortune 5. Moving Fortune to Expertise is even 
_worse_ than tying it to Vein Miner, IMO. I recommend just giving yourself 
2 extra expertise points in the meantime.

This is now a datapack thanks to @XanderHess!

### Gear Crafting

* ~~Reverted the 10x proficiency gain nerf from a bunch of updates ago.~~
* ~~Removed the cap on total proficiency.~~

These have been integrated into the base balancing.

### Hunter

* Halved cooldown times for all ranks.

### JEI Integration

* Up-to-date version of Freud’s JEI integration script for vault mod stuff.
* Removed all the outdated / uncraftable / not yet implemented vault stuff.

### Jewels

* Max size lowered to 40.

### Mekanism

* Added recipe for crushing Ender Pearls to Ender Dust for feature parity with 
  Thermal Expansion.

### ME Requester

* ~~Added the ME Requester mod (similar to what the RS Requester does).~~

Now part of the official pack!

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

* ~~Moved Nether room to lvl 0.~~
* ~~Moved End room to lvl 20.~~
* Removed Dimensional Shard Ore from the modder ore resource rooms. It is 
  literally useless in this pack.
* Moved modded ore room to lvl 0 to allow for easy no durability damage ores 
  farming.

Rooms have been fixed in the official files.

### Refined Storage

* Reverted some of the crafting recipe changes introduced in update 5.
* Lowered the cost of 64k storage parts.

### Researches

* Raised the research cost of Automatic Genius to ~~10~~ 3. Might change again,
  not sure on the balancing of this one yet.
* Automatic Genius no longer requires unlocking everything else.
* Added research requirements for AE2 Things, AE 2 WTLib, Applied Botanics,
  Applied Mekanistics; if you do not run these mods, it shouldn’t have any
  effect.
* Lowered Big Backpack cost to 2 to bring it in line with small backpacks.
* Lowered Vaultar Automation research cost to 5.

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

* ~~Increased drop rate of soul shards across the board.~~

Has been matched (surpassed even) by official balance changes.

### Spirit Extractor

* Lowered revival costs across the board.
* ~~Lowered death scaling.~~ Has been removed in the official pack.

### Spore Blossom

* ~~added Botania transmutation recipes:~~
  * ~~Azalea → Flowering Azalea~~
  * ~~Flowering Azalea → Spore Blossom~~
  * ~~Spore Blossom → Azalea~~
* ~~added Phytogenic Insolator recipe~~

~~Currently the only way to farm Spore Blossoms is Botany Pots. That sucks.
Taking suggestions for other recipe ideas!~~

Those have been officially integrated into the mod pack! \o/

### Thermal Expansion

* Can now pulverize Sky Stone into Sky Stone Dust.

### Vanilla Recipes

* Added recipe for making Concrete in a crafting table with a water bucket, 
  similar to the Building Gadgets’ Dense Paste recipe added in Update 10.

### Vault Alloy

* Added recipe: Vault Ingot + Vaulterite Ingot.

Vault Ingots are kinda useless right now otherwise.

### Vault Altar

* ~~Increased chance of getting a lucky recipe from 10% to 35%.~~ There no 
  longer is a base chance, the only way to get lucky recipes is now the 
  expertise for it.
* Recipe ingredients are now tagged for your filtering pleasure:
  * `the_vault:altar_requirements`
  * `the_vault:altar_requirements/<level>`
  * `the_vault:altar_requirements/<pool>`
  * `the_vault:altar_requirements/<pool>/<level>`

### Vault Diffuser

* Increased the payout for common scavenger items from 1 to 4.
