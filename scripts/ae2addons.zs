/* scripts made by alterNERDtive
for Iskall85's Vaulthunters */

<tag:items:curios:curio>.add(<item:ae2:wireless_terminal>);

// AE2 Things

craftingTable.remove(<item:ae2things:advanced_inscriber>);
craftingTable.addShaped("ae2_advanced_inscriber", <item:ae2things:advanced_inscriber>, [
  [<item:the_vault:chromatic_steel_ingot>, <item:the_vault:extraordinary_larimar>, <item:the_vault:chromatic_steel_ingot>],
  [<item:ae2:engineering_processor>, <item:ae2:inscriber>, <item:ae2:engineering_processor>],
  [<item:the_vault:chromatic_steel_ingot>, <item:the_vault:extraordinary_larimar>, <item:the_vault:chromatic_steel_ingot>]
]);

craftingTable.remove(<item:ae2things:crystal_growth>);
craftingTable.addShaped("ae2_crystal_growth", <item:ae2things:crystal_growth>, [
  [<item:ae2:quartz_growth_accelerator>, <item:the_vault:extraordinary_larimar>, <item:ae2:quartz_growth_accelerator>],
  [<item:ae2:quartz_growth_accelerator>, <item:the_vault:vault_diamond_block>, <item:ae2:quartz_growth_accelerator>],
  [<item:ae2:quartz_growth_accelerator>, <item:the_vault:extraordinary_larimar>, <item:ae2:quartz_growth_accelerator>]
]);

craftingTable.remove(<item:ae2things:disk_drive_1k>);
craftingTable.addShapeless("ae2_disk_drive_1k_shapeless", <item:ae2things:disk_drive_1k>, [
  <item:ae2things:disk_housing>, <item:ae2:cell_component_1k>
]);

craftingTable.remove(<item:ae2things:disk_drive_4k>);
craftingTable.addShapeless("ae2_disk_drive_4k_shapeless", <item:ae2things:disk_drive_4k>, [
  <item:ae2things:disk_housing>, <item:ae2:cell_component_4k>
]);

craftingTable.remove(<item:ae2things:disk_drive_16k>);
craftingTable.addShapeless("ae2_disk_drive_16k_shapeless", <item:ae2things:disk_drive_16k>, [
  <item:ae2things:disk_housing>, <item:ae2:cell_component_16k>
]);

craftingTable.remove(<item:ae2things:disk_drive_64k>);
craftingTable.addShapeless("ae2_disk_drive_64k_shapeless", <item:ae2things:disk_drive_64k>, [
  <item:ae2things:disk_housing>, <item:ae2:cell_component_64k>
]);

craftingTable.remove(<item:ae2things:disk_drive_256k>);
craftingTable.addShapeless("ae2_disk_drive_256k_shapeless", <item:ae2things:disk_drive_256k>, [
  <item:ae2things:disk_housing>, <item:ae2:cell_component_256k>
]);

craftingTable.remove(<item:ae2things:disk_housing>);
craftingTable.addShaped("ae2_disk_housing", <item:ae2things:disk_housing>, [
  [<item:the_vault:chromatic_iron_ingot>, <item:minecraft:redstone_block>, <item:the_vault:chromatic_iron_ingot>],
  [<item:minecraft:redstone_block>, <item:minecraft:air>, <item:minecraft:redstone_block>],
  [<item:the_vault:chromatic_steel_ingot>, <item:the_vault:chromatic_steel_ingot>, <item:the_vault:chromatic_steel_ingot>]
]);

// AE2WTLib

craftingTable.remove(<item:ae2wtlib:wireless_pattern_encoding_terminal>);
craftingTable.addShaped("ae2wtlib_wireless_pattern_terminal", <item:ae2wtlib:wireless_pattern_encoding_terminal>, [
  [<item:minecraft:air>, <item:ae2:wireless_receiver>, <item:minecraft:air>],
  [<item:minecraft:air>, <item:ae2:pattern_encoding_terminal>, <item:minecraft:air>],
  [<item:minecraft:air>, <item:ae2:dense_energy_cell>, <item:minecraft:air>]
]);
craftingTable.addShapeless("ae2wtlib_wireless_pattern_terminal_from_terminal", <item:ae2wtlib:wireless_pattern_encoding_terminal>, [
    <item:ae2:wireless_terminal>, <item:ae2:engineering_processor>
]);

// Applied Botanics

craftingTable.remove(<item:appbot:mana_cell_housing>);
craftingTable.addShaped("ae2_mana_cell_housing", <item:appbot:mana_cell_housing>, [
  [<item:the_vault:chromatic_iron_ingot>, <item:botania:elementium_ingot>, <item:the_vault:chromatic_iron_ingot>],
  [<item:botania:elementium_ingot>, <item:minecraft:air>, <item:botania:elementium_ingot>],
  [<item:botania:manasteel_ingot>, <item:botania:manasteel_ingot>, <item:botania:manasteel_ingot>]
]);

// Applied Mekanistics

craftingTable.remove(<item:appmek:chemical_cell_housing>);
craftingTable.addShaped("ae2_chemical_cell_housing", <item:appmek:chemical_cell_housing>, [
  [<item:the_vault:chromatic_iron_ingot>, <item:minecraft:redstone_block>, <item:the_vault:chromatic_iron_ingot>],
  [<item:minecraft:redstone_block>, <item:minecraft:air>, <item:minecraft:redstone_block>],
  [<item:mekanism:ingot_osmium>, <item:mekanism:ingot_osmium>, <item:mekanism:ingot_osmium>]
]);

// ME Requester

craftingTable.remove(<item:merequester:requester>);
craftingTable.addShaped("ae2_me_requester", <item:merequester:requester>, [
  [<item:the_vault:chromatic_steel_ingot>, <tag:items:ae2:interface>, <item:the_vault:chromatic_steel_ingot>],
  [<item:ae2:crafting_accelerator>, <item:ae2:engineering_processor>, <item:ae2:crafting_accelerator>],
  [<item:the_vault:vault_diamond>, <item:the_vault:vault_essence>, <item:the_vault:vault_diamond>]
]);
