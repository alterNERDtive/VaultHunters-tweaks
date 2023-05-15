/* scripts made by alterNERDtive
for Iskall85's Vaulthunters */

import mods.jei.JEI;

// tablet from base
craftingTable.remove(<item:rftoolsbase:tablet>);
craftingTable.addShaped("rftoolsbase_tablet", <item:rftoolsbase:tablet>, [
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_essence>, <item:the_vault:chromatic_iron_ingot>],
  [<item:the_vault:gem_larimar>, <tag:items:forge:storage_blocks/quartz>, <item:the_vault:gem_larimar>],
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:gem_larimar>, <item:the_vault:chromatic_iron_ingot>]
]);

// I don’t think this mod should allow auto crafting, period
JEI.hideRegex("rftoolsutility:crafter\\d");

// what does this even do⁈
JEI.hideIngredient(<item:rftoolsutility:teleport_probe>);

// removed for having … slight crashing issues
JEI.hideRegex("rftoolsutility:inventory(plus)?_module");

// iSpawners’ job
JEI.hideIngredient(<item:rftoolsutility:matter_beamer>);
JEI.hideIngredient(<item:rftoolsutility:spawner>);
JEI.hideIngredient(<item:rftoolsutility:syringe>);

// LOL, beacon but OP
JEI.hideIngredient(<item:rftoolsutility:environmental_controller>);
JEI.hideRegex("rftoolsutility:module(plus)?_template");
JEI.hideIngredient(<item:rftoolsutility:blindness_module>);
JEI.hideRegex("rftoolsutility:featherfalling(plus)?_module");
JEI.hideRegex("rftoolsutility:haste(plus)?_module");
JEI.hideIngredient(<item:rftoolsutility:flight_module>);
JEI.hideIngredient(<item:rftoolsutility:glowing_module>);
JEI.hideIngredient(<item:rftoolsutility:luck_module>);
JEI.hideIngredient(<item:rftoolsutility:nightvision_module>);
JEI.hideIngredient(<item:rftoolsutility:noteleport_module>);
JEI.hideIngredient(<item:rftoolsutility:peaceful_module>);
JEI.hideIngredient(<item:rftoolsutility:poison_module>);
JEI.hideRegex("rftoolsutility:regeneration(plus)?_module");
JEI.hideRegex("rftoolsutility:saturation(plus)?_module");
JEI.hideIngredient(<item:rftoolsutility:slowness_module>);
JEI.hideRegex("rftoolsutility:speed(plus)?_module");
JEI.hideIngredient(<item:rftoolsutility:waterbreathing_module>);
JEI.hideIngredient(<item:rftoolsutility:weakness_module>);

// requires Open Computers
JEI.hideIngredient(<item:rftoolsutility:computer_module>);

// just clutter
JEI.hideRegex("rftoolsutility:tablet_.*");

// needed RFTools base stuff, vaultified

craftingTable.remove(<item:rftoolsbase:machine_base>);
craftingTable.addShaped("rftoolsbase_machine_base", <item:rftoolsbase:machine_base>, [
  [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:gem_larimar>, <item:the_vault:chromatic_iron_ingot>],
  [<item:the_vault:polished_vault_stone>, <item:the_vault:polished_vault_stone>, <item:the_vault:polished_vault_stone>]
]);

craftingTable.remove(<item:rftoolsbase:smartwrench>);
craftingTable.addShaped("rftoolsbase_smartwrench", <item:rftoolsbase:smartwrench>, [
  [<item:minecraft:air>, <item:minecraft:air>, <item:the_vault:chromatic_iron_ingot>],
  [<item:minecraft:air>, <item:the_vault:gem_larimar>, <item:minecraft:air>],
  [<item:the_vault:gem_larimar>, <item:minecraft:air>, <item:minecraft:air>]
]);

// vaultified recipes

craftingTable.remove(<item:rftoolsutility:redstone_information>);
craftingTable.addShaped("rftoolsutility_redstone_information", <item:rftoolsutility:redstone_information>, [
  [<item:the_vault:vault_essence>, <item:minecraft:ender_pearl>, <item:the_vault:vault_essence>],
  [<item:the_vault:vault_essence>, <item:minecraft:redstone_block>, <item:the_vault:vault_essence>],
  [<item:the_vault:gem_larimar>, <item:the_vault:perfect_larimar>, <item:the_vault:gem_larimar>]
]);

craftingTable.remove(<item:rftoolsutility:screen_link>);
craftingTable.addShaped("rftoolsutility_screen_link", <item:rftoolsutility:screen_link>, [
  [<item:the_vault:vault_essence>, <item:minecraft:ender_pearl>, <item:the_vault:vault_essence>],
  [<tag:items:c:glass_panes>, <tag:items:c:glass_panes>, <tag:items:c:glass_panes>],
  [<item:the_vault:gem_larimar>, <item:the_vault:perfect_larimar>, <item:the_vault:gem_larimar>]
]);

craftingTable.remove(<item:rftoolsutility:screen>);
craftingTable.addShaped("rftoolsutility_screen", <item:rftoolsutility:screen>, [
  [<tag:items:c:glass_blocks>, <tag:items:c:glass_blocks>, <tag:items:c:glass_blocks>],
  [<item:the_vault:gem_larimar>, <item:rftoolsbase:machine_base>, <item:the_vault:gem_larimar>],
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:chromatic_iron_ingot>, <item:the_vault:chromatic_iron_ingot>]
]);

craftingTable.remove(<item:rftoolsutility:screen_controller>);
craftingTable.addShaped("rftoolsutility_screen_controller", <item:rftoolsutility:screen_controller>, [
  [<item:the_vault:chromatic_iron_ingot>, <tag:items:c:glass_blocks>, <item:the_vault:chromatic_iron_ingot>],
  [<tag:items:c:glass_blocks>, <item:rftoolsbase:machine_frame>, <tag:items:c:glass_blocks>],
  [<item:the_vault:perfect_larimar>, <tag:items:c:glass_blocks>, <item:the_vault:perfect_larimar>]
]);

craftingTable.remove(<item:rftoolsutility:text_module>);
craftingTable.addShaped("rftoolsutility_text_module", <item:rftoolsutility:text_module>, [
  [<item:minecraft:air>, <item:minecraft:paper>, <item:minecraft:air>],
  [<item:the_vault:vault_essence>, <item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_essence>],
  [<item:minecraft:air>, <item:the_vault:perfect_larimar>, <item:minecraft:air>]
]);

craftingTable.remove(<item:rftoolsutility:energy_module>);
craftingTable.addShaped("rftoolsutility_energy_module", <item:rftoolsutility:energy_module>, [
  [<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>],
  [<item:the_vault:vault_essence>, <item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_essence>],
  [<item:minecraft:air>, <item:the_vault:perfect_larimar>, <item:minecraft:air>]
]);

craftingTable.remove(<item:rftoolsutility:energyplus_module>);
craftingTable.addShaped("rftoolsutility_energyplus_module", <item:rftoolsutility:energyplus_module>, [
  [<item:minecraft:air>, <item:minecraft:ender_pearl>, <item:minecraft:air>],
  [<item:the_vault:chromatic_steel_ingot>, <item:rftoolsutility:energy_module>, <item:the_vault:chromatic_steel_ingot>],
  [<item:minecraft:air>, <item:the_vault:extraordinary_larimar>, <item:minecraft:air>]
]);

craftingTable.remove(<item:rftoolsutility:clock_module>);
craftingTable.addShaped("rftoolsutility_clock_module", <item:rftoolsutility:clock_module>, [
  [<item:minecraft:air>, <item:minecraft:clock>, <item:minecraft:air>],
  [<item:the_vault:vault_essence>, <item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_essence>],
  [<item:minecraft:air>, <item:the_vault:perfect_larimar>, <item:minecraft:air>]
]);

craftingTable.remove(<item:rftoolsutility:fluid_module>);
craftingTable.addShaped("rftoolsutility_fluid_module", <item:rftoolsutility:fluid_module>, [
  [<item:minecraft:air>, <item:minecraft:bucket>, <item:minecraft:air>],
  [<item:the_vault:vault_essence>, <item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_essence>],
  [<item:minecraft:air>, <item:the_vault:perfect_larimar>, <item:minecraft:air>]
]);

craftingTable.remove(<item:rftoolsutility:fluidplus_module>);
craftingTable.addShaped("rftoolsutility_fluidplus_module", <item:rftoolsutility:fluidplus_module>, [
  [<item:minecraft:air>, <item:minecraft:ender_pearl>, <item:minecraft:air>],
  [<item:the_vault:chromatic_steel_ingot>, <item:rftoolsutility:fluid_module>, <item:the_vault:chromatic_steel_ingot>],
  [<item:minecraft:air>, <item:the_vault:extraordinary_larimar>, <item:minecraft:air>]
]);

craftingTable.remove(<item:rftoolsutility:machineinformation_module>);
craftingTable.addShaped("rftoolsutility_machineinformation_module", <item:rftoolsutility:machineinformation_module>, [
  [<item:minecraft:air>, <item:minecraft:furnace>, <item:minecraft:air>],
  [<item:the_vault:vault_essence>, <item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_essence>],
  [<item:minecraft:air>, <item:the_vault:perfect_larimar>, <item:minecraft:air>]
]);

craftingTable.remove(<item:rftoolsutility:button_module>);
craftingTable.addShaped("rftoolsutility_button_module", <item:rftoolsutility:button_module>, [
  [<item:minecraft:air>, <tag:items:minecraft:buttons>, <item:minecraft:air>],
  [<item:the_vault:vault_essence>, <item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_essence>],
  [<item:minecraft:air>, <item:the_vault:perfect_larimar>, <item:minecraft:air>]
]);

craftingTable.remove(<item:rftoolsutility:redstone_module>);
craftingTable.addShaped("rftoolsutility_redstone_module", <item:rftoolsutility:redstone_module>, [
  [<item:minecraft:air>, <item:minecraft:repeater>, <item:minecraft:air>],
  [<item:the_vault:vault_essence>, <item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_essence>],
  [<item:minecraft:air>, <item:the_vault:perfect_larimar>, <item:minecraft:air>]
]);

craftingTable.remove(<item:rftoolsutility:counter_module>);
craftingTable.addShaped("rftoolsutility_counter_module", <item:rftoolsutility:counter_module>, [
  [<item:minecraft:air>, <item:minecraft:comparator>, <item:minecraft:air>],
  [<item:the_vault:vault_essence>, <item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_essence>],
  [<item:minecraft:air>, <item:the_vault:perfect_larimar>, <item:minecraft:air>]
]);

craftingTable.remove(<item:rftoolsutility:counterplus_module>);
craftingTable.addShaped("rftoolsutility_counterplus_module", <item:rftoolsutility:counterplus_module>, [
  [<item:minecraft:air>, <item:minecraft:ender_pearl>, <item:minecraft:air>],
  [<item:the_vault:chromatic_steel_ingot>, <item:rftoolsutility:counter_module>, <item:the_vault:chromatic_steel_ingot>],
  [<item:minecraft:air>, <item:the_vault:extraordinary_larimar>, <item:minecraft:air>]
]);

craftingTable.remove(<item:rftoolsutility:tank>);
craftingTable.addShaped("rftoolsutility_tank", <item:rftoolsutility:tank>, [
  [<tag:items:c:glass_blocks>, <tag:items:c:glass_blocks>, <tag:items:c:glass_blocks>],
  [<item:minecraft:bucket>, <item:rftoolsbase:machine_frame>, <item:minecraft:bucket>],
  [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:chromatic_iron_ingot>, <item:the_vault:chromatic_iron_ingot>]
]);

craftingTable.remove(<item:rftoolsutility:matter_transmitter>);
craftingTable.addShaped("rftoolsutility_matter_transmitter", <item:rftoolsutility:matter_transmitter>, [
  [<item:minecraft:ender_pearl>, <item:the_vault:extraordinary_larimar>, <item:minecraft:ender_pearl>],
  [<item:the_vault:vault_essence>, <item:rftoolsbase:machine_frame>, <item:the_vault:vault_essence>],
  [<item:the_vault:chromatic_steel_ingot>, <item:the_vault:chromatic_steel_ingot>, <item:the_vault:chromatic_steel_ingot>]
]);

craftingTable.remove(<item:rftoolsutility:matter_receiver>);
craftingTable.addShaped("rftoolsutility_matter_receiver", <item:rftoolsutility:matter_receiver>, [
  [<item:the_vault:chromatic_steel_ingot>, <item:the_vault:chromatic_steel_ingot>, <item:the_vault:chromatic_steel_ingot>],
  [<item:the_vault:vault_essence>, <item:rftoolsbase:machine_frame>, <item:the_vault:vault_essence>],
  [<item:minecraft:ender_pearl>, <item:the_vault:extraordinary_larimar>, <item:minecraft:ender_pearl>]
]);

craftingTable.remove(<item:rftoolsutility:dialing_device>);
craftingTable.addShaped("rftoolsutility_dialing_device", <item:rftoolsutility:dialing_device>, [
  [<item:the_vault:vault_essence>, <item:the_vault:perfect_larimar>, <item:the_vault:vault_essence>],
  [<item:minecraft:redstone_torch>, <item:rftoolsbase:machine_frame>, <item:minecraft:redstone_torch>],
  [<item:the_vault:vault_essence>, <item:the_vault:perfect_larimar>, <item:the_vault:vault_essence>]
]);

craftingTable.remove(<item:rftoolsutility:destination_analyzer>);
craftingTable.addShaped("rftoolsutility_destination_analyzer", <item:rftoolsutility:destination_analyzer>, [
  [<item:the_vault:vault_essence>, <item:minecraft:ender_pearl>, <item:the_vault:vault_essence>],
  [<item:minecraft:comparator>, <item:rftoolsbase:machine_frame>, <item:minecraft:repeater>],
  [<tag:items:ae2:all_quartz>, <item:the_vault:perfect_larimar>, <tag:items:ae2:all_quartz>]
]);

craftingTable.remove(<item:rftoolsutility:matter_booster>);
craftingTable.addShaped("rftoolsutility_matter_booster", <item:rftoolsutility:matter_booster>, [
    [<item:minecraft:air>, <item:the_vault:vault_diamond>, <item:minecraft:air>],
    [<item:minecraft:redstone_block>, <item:rftoolsbase:machine_frame>, <item:minecraft:redstone_block>],
    [<item:minecraft:air>, <item:the_vault:extraordinary_larimar>, <item:minecraft:air>]
]);

craftingTable.remove(<item:rftoolsutility:simple_dialer>);
craftingTable.addShaped("rftoolsutility_simple_dialer", <item:rftoolsutility:simple_dialer>, [
    [<item:the_vault:vault_essence>, <item:the_vault:perfect_larimar>, <item:the_vault:vault_essence>],
    [<item:minecraft:redstone_torch>, <item:rftoolsbase:machine_base>, <item:minecraft:redstone_torch>],
    [<item:the_vault:vault_essence>, <item:the_vault:perfect_larimar>, <item:the_vault:vault_essence>]
]);

craftingTable.remove(<item:rftoolsutility:charged_porter>);
craftingTable.addShaped("rftoolsutility_charged_porter", <item:rftoolsutility:charged_porter>, [
    [<item:minecraft:air>, <item:minecraft:ender_pearl>, <item:minecraft:air>],
    [<item:the_vault:vault_essence>, <item:the_vault:extraordinary_larimar>, <item:the_vault:vault_essence>],
    [<item:the_vault:chromatic_steel_ingot>, <item:the_vault:vault_diamond>, <item:the_vault:chromatic_steel_ingot>]
]);

craftingTable.remove(<item:rftoolsutility:advanced_charged_porter>);
craftingTable.addShaped("rftoolsutility_advanced_charged_porter", <item:rftoolsutility:advanced_charged_porter>, [
    [<item:the_vault:extraordinary_larimar>, <item:the_vault:vault_diamond>, <item:the_vault:extraordinary_larimar>],
    [<item:the_vault:vault_diamond>, <item:rftoolsutility:charged_porter>, <item:the_vault:vault_diamond>],
    [<item:the_vault:chromatic_steel_ingot>, <item:the_vault:vault_diamond>, <item:the_vault:chromatic_steel_ingot>]
]);
