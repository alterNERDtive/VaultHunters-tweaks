/* scripts made by alterNERDtive
for Iskall85's Vaulthunters */

import crafttweaker.api.recipe.SmithingRecipeManager;
import mods.jei.JEI;

/**
The main drawback of this vs. the role SSN fills in the default Vault Hunters
pack is that Sophisticated Storage does not have a (crafting) grid as a way to
access all the items in the system centrally. The controller does this for
other mods (RS/AE/etc.pp.), but not for players.
The Crafting Station mod remedies that by providing the Crafting Station block
from Tinker’s Construct. It can read adjacent inventories and displays them
alongside the crafting grid. It does _not_ work with any of the other storage
mods (Drawer Controller, RS / ME Interface).
*/

craftingTable.remove(<item:craftingstation:crafting_station>);
craftingTable.addShaped("crafting_station", <item:craftingstation:crafting_station>, [
  [<item:the_vault:driftwood>, <item:the_vault:driftwood>, <item:the_vault:driftwood>],
  [<item:the_vault:driftwood>, <item:the_vault:gem_pog>, <item:the_vault:driftwood>],
  [<item:the_vault:driftwood>, <item:the_vault:driftwood>, <item:the_vault:driftwood>]
]);

craftingTable.remove(<item:craftingstation:crafting_station_slab>);
craftingTable.addShapeless("crafting_station_slab", <item:craftingstation:crafting_station_slab>, [
  <item:craftingstation:crafting_station>
]);

/**
Generally inspired by both SSN recipe costs (for cheap early game storage) and
Sophisticated Backpacks recipe style (for obvious reasons). Generally aimed at
being cheaper than Backpacks because it’s storage _only_ and cannot be used in
vaults. For the same reason it probably doesn’t have to be split into several
researches.
*/

JEI.hideMod("sophisticatedstorage");

/**
For chests and barrels, the general idea is to craft the basic one, then use
upgrades on them; similar to how Mekanism tier upgrades work. Sophisticated
Shulker Boxes removed to not have them compete with backpacks.
*/

// Chests

craftingTable.remove(<item:sophisticatedstorage:chest>);
craftingTable.remove(<item:sophisticatedstorage:iron_chest>);
craftingTable.remove(<item:sophisticatedstorage:gold_chest>);
craftingTable.remove(<item:sophisticatedstorage:diamond_chest>);
smithing.remove(<item:sophisticatedstorage:netherite_chest>);

craftingTable.addShaped("sophisticatedstorage_chest", <item:sophisticatedstorage:chest>, [
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:driftwood>, <item:the_vault:chromatic_iron_ingot>],
  [<item:the_vault:driftwood>, <tag:items:minecraft:logs>, <item:the_vault:driftwood>],
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_diamond>, <item:the_vault:chromatic_iron_ingot>]
]);
JEI.addIngredient(<item:sophisticatedstorage:chest>);

// Barrels

craftingTable.remove(<item:sophisticatedstorage:barrel>);
craftingTable.remove(<item:sophisticatedstorage:iron_barrel>);
craftingTable.remove(<item:sophisticatedstorage:gold_barrel>);
craftingTable.remove(<item:sophisticatedstorage:diamond_barrel>);
smithing.remove(<item:sophisticatedstorage:netherite_barrel>);

craftingTable.addShaped("sophisticatedstorage_barrel", <item:sophisticatedstorage:barrel>, [
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:driftwood>, <item:the_vault:chromatic_iron_ingot>],
  [<item:the_vault:driftwood>, <tag:items:minecraft:logs>, <item:the_vault:driftwood>],
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_diamond>, <item:the_vault:chromatic_iron_ingot>]
]);
JEI.addIngredient(<item:sophisticatedstorage:barrel>);

craftingTable.remove(<item:sophisticatedstorage:limited_barrel_1>);
craftingTable.remove(<item:sophisticatedstorage:limited_iron_barrel_1>);
craftingTable.remove(<item:sophisticatedstorage:limited_gold_barrel_1>);
craftingTable.remove(<item:sophisticatedstorage:limited_diamond_barrel_1>);
smithing.remove(<item:sophisticatedstorage:limited_netherite_barrel_1>);

craftingTable.addShaped("sophisticatedstorage_limited_barrel_1", <item:sophisticatedstorage:limited_barrel_1>, [
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:driftwood>, <item:the_vault:chromatic_iron_ingot>],
  [<item:the_vault:driftwood>, <tag:items:minecraft:logs>, <item:the_vault:driftwood>],
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_diamond>, <item:the_vault:chromatic_iron_ingot>]
]);
JEI.addIngredient(<item:sophisticatedstorage:limited_barrel_1>);

craftingTable.remove(<item:sophisticatedstorage:limited_barrel_2>);
craftingTable.remove(<item:sophisticatedstorage:limited_iron_barrel_2>);
craftingTable.remove(<item:sophisticatedstorage:limited_gold_barrel_2>);
craftingTable.remove(<item:sophisticatedstorage:limited_diamond_barrel_2>);
smithing.remove(<item:sophisticatedstorage:limited_netherite_barrel_2>);

craftingTable.addShaped("sophisticatedstorage_limited_barrel_2", <item:sophisticatedstorage:limited_barrel_2>, [
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:driftwood>, <item:the_vault:chromatic_iron_ingot>],
  [<item:the_vault:driftwood>, <tag:items:minecraft:logs>, <item:the_vault:driftwood>],
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_diamond>, <item:the_vault:chromatic_iron_ingot>]
]);
JEI.addIngredient(<item:sophisticatedstorage:limited_barrel_2>);

craftingTable.remove(<item:sophisticatedstorage:limited_barrel_3>);
craftingTable.remove(<item:sophisticatedstorage:limited_iron_barrel_3>);
craftingTable.remove(<item:sophisticatedstorage:limited_gold_barrel_3>);
craftingTable.remove(<item:sophisticatedstorage:limited_diamond_barrel_3>);
smithing.remove(<item:sophisticatedstorage:limited_netherite_barrel_3>);

craftingTable.addShaped("sophisticatedstorage_limited_barrel_3", <item:sophisticatedstorage:limited_barrel_3>, [
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:driftwood>, <item:the_vault:chromatic_iron_ingot>],
  [<item:the_vault:driftwood>, <tag:items:minecraft:logs>, <item:the_vault:driftwood>],
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_diamond>, <item:the_vault:chromatic_iron_ingot>]
]);
JEI.addIngredient(<item:sophisticatedstorage:limited_barrel_3>);

craftingTable.remove(<item:sophisticatedstorage:limited_barrel_4>);
craftingTable.remove(<item:sophisticatedstorage:limited_iron_barrel_4>);
craftingTable.remove(<item:sophisticatedstorage:limited_gold_barrel_4>);
craftingTable.remove(<item:sophisticatedstorage:limited_diamond_barrel_4>);
smithing.remove(<item:sophisticatedstorage:limited_netherite_barrel_4>);

craftingTable.addShaped("sophisticatedstorage_limited_barrel_4", <item:sophisticatedstorage:limited_barrel_4>, [
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:driftwood>, <item:the_vault:chromatic_iron_ingot>],
  [<item:the_vault:driftwood>, <tag:items:minecraft:logs>, <item:the_vault:driftwood>],
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_diamond>, <item:the_vault:chromatic_iron_ingot>]
]);
JEI.addIngredient(<item:sophisticatedstorage:limited_barrel_4>);

// Shulkers

craftingTable.remove(<item:sophisticatedstorage:shulker_box>);
craftingTable.remove(<item:sophisticatedstorage:iron_shulker_box>);
craftingTable.remove(<item:sophisticatedstorage:gold_shulker_box>);
craftingTable.remove(<item:sophisticatedstorage:diamond_shulker_box>);
smithing.remove(<item:sophisticatedstorage:netherite_shulker_box>);

// Controller

craftingTable.remove(<item:sophisticatedstorage:controller>);
craftingTable.remove(<item:sophisticatedstorage:storage_link>);

craftingTable.addShaped("sophisticatedstorage_controller", <item:sophisticatedstorage:controller>, [
  [<item:the_vault:chromatic_steel_ingot>, <item:sophisticatedstorage:storage_link>, <item:the_vault:chromatic_steel_ingot>],
  [<item:the_vault:perfect_larimar>, <item:sophisticatedstorage:chest>, <item:the_vault:perfect_larimar>],
  [<item:the_vault:chromatic_steel_ingot>, <item:sophisticatedstorage:storage_link>, <item:the_vault:chromatic_steel_ingot>]
]);
JEI.addIngredient(<item:sophisticatedstorage:controller>);
craftingTable.addShaped("sophisticatedstorage_storage_link", <item:sophisticatedstorage:storage_link>, [
  [<item:the_vault:vault_essence>, <item:the_vault:driftwood>],
  [<item:the_vault:gem_larimar>, <item:the_vault:chromatic_iron_ingot>]
]);
JEI.addIngredient(<item:sophisticatedstorage:storage_link>);

// Tier Upgrades

craftingTable.remove(<item:sophisticatedstorage:upgrade_base>);

craftingTable.addShaped("sophisticatedstorage_upgrade_base", <item:sophisticatedstorage:upgrade_base>, [
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_essence>, <item:the_vault:chromatic_iron_ingot>],
  [<item:the_vault:perfect_larimar>, <item:the_vault:chromatic_iron_block>, <item:the_vault:perfect_larimar>],
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_essence>, <item:the_vault:chromatic_iron_ingot>]
]);
JEI.addIngredient(<item:sophisticatedstorage:upgrade_base>);

craftingTable.remove(<item:sophisticatedstorage:basic_tier_upgrade>);

craftingTable.remove(<item:sophisticatedstorage:basic_to_iron_tier_upgrade>);
craftingTable.addShaped("sophisticatedstorage_basic_to_iron_tier_upgrade", <item:sophisticatedstorage:basic_to_iron_tier_upgrade>, [
  [<item:the_vault:vault_essence>, <item:the_vault:vault_diamond>, <item:the_vault:vault_essence>],
  [<item:sophisticatedstorage:chest>, <item:the_vault:perfect_larimar>, <item:sophisticatedstorage:chest>],
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:chromatic_iron_block>, <item:the_vault:chromatic_iron_ingot>]
]);
JEI.addIngredient(<item:sophisticatedstorage:basic_to_iron_tier_upgrade>);

craftingTable.remove(<item:sophisticatedstorage:iron_to_gold_tier_upgrade>);
craftingTable.addShaped("sophisticatedstorage_iron_to_gold_tier_upgrade", <item:sophisticatedstorage:iron_to_gold_tier_upgrade>, [
  [<item:the_vault:vault_essence>, <item:the_vault:vault_diamond>, <item:the_vault:vault_essence>],
  [<item:sophisticatedstorage:chest>, <item:the_vault:extraordinary_larimar>, <item:sophisticatedstorage:chest>],
  [<item:the_vault:chromatic_steel_ingot>, <item:the_vault:chromatic_iron_block>, <item:the_vault:chromatic_steel_ingot>]
]);
JEI.addIngredient(<item:sophisticatedstorage:iron_to_gold_tier_upgrade>);

craftingTable.remove(<item:sophisticatedstorage:gold_to_diamond_tier_upgrade>);
craftingTable.addShaped("sophisticatedstorage_gold_to_diamond_tier_upgrade", <item:sophisticatedstorage:gold_to_diamond_tier_upgrade>, [
  [<item:the_vault:vault_essence>, <item:the_vault:vault_diamond_block>, <item:the_vault:vault_essence>],
  [<item:sophisticatedstorage:chest>, <item:the_vault:extraordinary_larimar>, <item:sophisticatedstorage:chest>],
  [<item:the_vault:chromatic_steel_ingot>, <item:the_vault:chromatic_steel_block>, <item:the_vault:chromatic_steel_ingot>]
]);
JEI.addIngredient(<item:sophisticatedstorage:gold_to_diamond_tier_upgrade>);

craftingTable.remove(<item:sophisticatedstorage:diamond_to_netherite_tier_upgrade>);
craftingTable.addShaped("sophisticatedstorage_diamond_to_netherite_tier_upgrade", <item:sophisticatedstorage:diamond_to_netherite_tier_upgrade>, [
  [<item:the_vault:vault_essence>, <item:the_vault:vault_diamond_block>, <item:the_vault:vault_essence>],
  [<item:sophisticatedstorage:chest>, <item:the_vault:gem_pog>, <item:sophisticatedstorage:chest>],
  [<item:the_vault:black_chromatic_steel_ingot>, <item:the_vault:chromatic_steel_block>, <item:the_vault:black_chromatic_steel_ingot>]
]);
JEI.addIngredient(<item:sophisticatedstorage:diamond_to_netherite_tier_upgrade>);

// Tools

JEI.addIngredient(<item:sophisticatedstorage:packing_tape>);
JEI.addIngredient(<item:sophisticatedstorage:debug_tool>);

craftingTable.remove(<item:sophisticatedstorage:storage_tool>);
craftingTable.addShaped("sophisticatedstorage_storage_tool", <item:sophisticatedstorage:storage_tool>, [
  [<item:minecraft:air>, <item:the_vault:vault_diamond>, <item:the_vault:chromatic_iron_ingot>],
  [<item:minecraft:air>, <item:the_vault:driftwood>, <item:the_vault:vault_essence>],
  [<item:the_vault:driftwood>, <item:minecraft:air>, <item:minecraft:air>]
]);
JEI.addIngredient(<item:sophisticatedstorage:storage_tool>);

// Upgrades

// Removed. The pack has enough mods for logistics to pick one for moving items
// in.
craftingTable.remove(<item:sophisticatedstorage:pickup_upgrade>);
craftingTable.remove(<item:sophisticatedstorage:advanced_pickup_upgrade>);

// Essential upgrade for organized storage.
craftingTable.remove(<item:sophisticatedstorage:filter_upgrade>);
craftingTable.addShaped("sophisticatedstorage_filter_upgrade", <item:sophisticatedstorage:filter_upgrade>, [
  [<item:the_vault:gem_larimar>, <item:the_vault:magic_silk>, <item:the_vault:gem_larimar>],
  [<item:the_vault:magic_silk>, <item:sophisticatedstorage:upgrade_base>, <item:the_vault:magic_silk>],
  [<item:the_vault:vault_essence>, <item:the_vault:magic_silk>, <item:the_vault:vault_essence>]
]);
JEI.addIngredient(<item:sophisticatedstorage:filter_upgrade>);
craftingTable.remove(<item:sophisticatedstorage:advanced_filter_upgrade>);
craftingTable.addShaped("sophisticatedstorage_advanced_filter_upgrade", <item:sophisticatedstorage:advanced_filter_upgrade>, [
  [<item:the_vault:chromatic_steel_ingot>, <item:the_vault:vault_diamond>, <item:the_vault:chromatic_steel_ingot>],
  [<item:the_vault:magic_silk>, <item:sophisticatedstorage:filter_upgrade>, <item:the_vault:magic_silk>],
  [<item:the_vault:vault_essence>, <item:the_vault:vault_diamond>, <item:the_vault:vault_essence>]
]);
JEI.addIngredient(<item:sophisticatedstorage:advanced_filter_upgrade>);

// Removed. Doesn’t fit the purpose of a simple storage mod.
craftingTable.remove(<item:sophisticatedstorage:magnet_upgrade>);
craftingTable.remove(<item:sophisticatedstorage:advanced_magnet_upgrade>);
craftingTable.remove(<item:sophisticatedstorage:feeding_upgrade>);
craftingTable.remove(<item:sophisticatedstorage:advanced_feeding_upgrade>);

// An alternative to compacting drawers! Might or might not be deemed “too
// much”.
craftingTable.remove(<item:sophisticatedstorage:compacting_upgrade>);
craftingTable.addShaped("sophisticatedstorage_compacting_upgrade", <item:sophisticatedstorage:compacting_upgrade>, [
  [<item:the_vault:vault_diamond>, <item:the_vault:vault_diamond>, <item:the_vault:vault_diamond>],
  [<item:the_vault:chromatic_steel_ingot>, <item:sophisticatedstorage:upgrade_base>, <item:the_vault:chromatic_steel_ingot>],
  [<item:the_vault:vault_essence>, <item:the_vault:vault_essence>, <item:the_vault:vault_essence>]
]);
JEI.addIngredient(<item:sophisticatedstorage:compacting_upgrade>);
craftingTable.remove(<item:sophisticatedstorage:advanced_compacting_upgrade>);
craftingTable.addShaped("sophisticatedstorage_advanced_compacting_upgrade", <item:sophisticatedstorage:advanced_compacting_upgrade>, [
  [<item:the_vault:chromatic_steel_ingot>, <item:the_vault:vault_diamond>, <item:the_vault:chromatic_steel_ingot>],
  [<item:the_vault:extraordinary_larimar>, <item:sophisticatedstorage:compacting_upgrade>, <item:the_vault:extraordinary_larimar>],
  [<item:the_vault:vault_essence>, <item:the_vault:vault_diamond>, <item:the_vault:vault_essence>]
]);
JEI.addIngredient(<item:sophisticatedstorage:advanced_compacting_upgrade>);

// Akin to Backpacks/Drawers.
craftingTable.remove(<item:sophisticatedstorage:void_upgrade>);
craftingTable.addShaped("sophisticatedstorage_void_upgrade", <item:sophisticatedstorage:void_upgrade>, [
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:carbon>, <item:the_vault:chromatic_iron_ingot>],
  [<item:the_vault:vault_essence>, <item:sophisticatedstorage:upgrade_base>, <item:the_vault:vault_essence>],
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:carbon>, <item:the_vault:chromatic_iron_ingot>]
]);
JEI.addIngredient(<item:sophisticatedstorage:void_upgrade>);
craftingTable.remove(<item:sophisticatedstorage:advanced_void_upgrade>);
craftingTable.addShaped("sophisticatedstorage_advanced_void_upgrade", <item:sophisticatedstorage:advanced_void_upgrade>, [
  [<item:the_vault:vault_essence>, <item:the_vault:vault_diamond>, <item:the_vault:vault_essence>],
  [<item:the_vault:perfect_larimar>, <item:sophisticatedstorage:void_upgrade>, <item:the_vault:perfect_larimar>],
  [<item:the_vault:chromatic_steel_ingot>, <item:the_vault:vault_diamond>, <item:the_vault:chromatic_steel_ingot>]
]);
JEI.addIngredient(<item:sophisticatedstorage:advanced_void_upgrade>);

// Removed. Touching AG territory. Maybe gate behind that?
craftingTable.remove(<item:sophisticatedstorage:smelting_upgrade>);
craftingTable.remove(<item:sophisticatedstorage:auto_smelting_upgrade>);
craftingTable.remove(<item:sophisticatedstorage:smoking_upgrade>);
craftingTable.remove(<item:sophisticatedstorage:auto_smoking_upgrade>);
craftingTable.remove(<item:sophisticatedstorage:blasting_upgrade>);
craftingTable.remove(<item:sophisticatedstorage:auto_blasting_upgrade>);
craftingTable.remove(<item:sophisticatedstorage:stonecutter_upgrade>);

// The “Storage Request Table™” upgrade.
craftingTable.remove(<item:sophisticatedstorage:crafting_upgrade>);
craftingTable.addShaped("sophisticatedstorage_crafting_upgrade", <item:sophisticatedstorage:crafting_upgrade>, [
  [<tag:items:refinedstorage:crafting_tables>, <item:the_vault:gem_pog>, <tag:items:refinedstorage:crafting_tables>],
  [<item:the_vault:chromatic_steel_ingot>, <item:sophisticatedstorage:upgrade_base>, <item:the_vault:chromatic_steel_ingot>],
  [<item:the_vault:perfect_larimar>, <item:sophisticatedstorage:chest>, <item:the_vault:perfect_larimar>]
]);
JEI.addIngredient(<item:sophisticatedstorage:crafting_upgrade>);

// Well … duh.
craftingTable.remove(<item:sophisticatedstorage:stack_upgrade_tier_1>);
craftingTable.addShaped("sophisticatedstorage_stack_upgrade_tier_1", <item:sophisticatedstorage:stack_upgrade_tier_1>, [
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_diamond>, <item:the_vault:chromatic_iron_ingot>],
  [<item:the_vault:gem_larimar>, <item:sophisticatedstorage:upgrade_base>, <item:the_vault:gem_larimar>],
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_diamond>, <item:the_vault:chromatic_iron_ingot>]
]);
JEI.addIngredient(<item:sophisticatedstorage:stack_upgrade_tier_1>);
craftingTable.remove(<item:sophisticatedstorage:stack_upgrade_tier_2>);
craftingTable.addShaped("sophisticatedstorage_stack_upgrade_tier_2", <item:sophisticatedstorage:stack_upgrade_tier_2>, [
  [<item:the_vault:chromatic_iron_block>, <item:the_vault:vault_diamond>, <item:the_vault:chromatic_iron_block>],
  [<item:the_vault:perfect_larimar>, <item:sophisticatedstorage:stack_upgrade_tier_1>, <item:the_vault:perfect_larimar>],
  [<item:the_vault:chromatic_iron_block>, <item:the_vault:vault_diamond>, <item:the_vault:chromatic_iron_block>]
]);
JEI.addIngredient(<item:sophisticatedstorage:stack_upgrade_tier_2>);
craftingTable.remove(<item:sophisticatedstorage:stack_upgrade_tier_3>);
craftingTable.addShaped("sophisticatedstorage_stack_upgrade_tier_3", <item:sophisticatedstorage:stack_upgrade_tier_3>, [
  [<item:the_vault:chromatic_steel_ingot>, <item:the_vault:vault_diamond>, <item:the_vault:chromatic_steel_ingot>],
  [<item:the_vault:extraordinary_larimar>, <item:sophisticatedstorage:stack_upgrade_tier_2>, <item:the_vault:extraordinary_larimar>],
  [<item:the_vault:chromatic_steel_ingot>, <item:the_vault:vault_diamond>, <item:the_vault:chromatic_steel_ingot>]
]);
JEI.addIngredient(<item:sophisticatedstorage:stack_upgrade_tier_3>);
craftingTable.remove(<item:sophisticatedstorage:stack_upgrade_tier_4>);
craftingTable.addShaped("sophisticatedstorage_stack_upgrade_tier_4", <item:sophisticatedstorage:stack_upgrade_tier_4>, [
  [<item:the_vault:black_chromatic_steel_ingot>, <item:the_vault:vault_diamond_block>, <item:the_vault:black_chromatic_steel_ingot>],
  [<item:the_vault:extraordinary_larimar>, <item:sophisticatedstorage:stack_upgrade_tier_3>, <item:the_vault:extraordinary_larimar>],
  [<item:the_vault:chromatic_steel_block>, <item:the_vault:gem_pog>, <item:the_vault:chromatic_steel_block>]
]);
JEI.addIngredient(<item:sophisticatedstorage:stack_upgrade_tier_4>);

// You can’t tell me I can’t have this.
JEI.addIngredient(<item:sophisticatedstorage:jukebox_upgrade>);

// Well … no fluid storage in Backpacks either, eh?
craftingTable.remove(<item:sophisticatedstorage:pump_upgrade>);
craftingTable.remove(<item:sophisticatedstorage:advanced_pump_upgrade>);
craftingTable.remove(<item:sophisticatedstorage:xp_pump_upgrade>);
