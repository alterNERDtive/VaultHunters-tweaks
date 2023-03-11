/* scripts made by alterNERDtive
for Iskall85's Vaulthunters */

craftingTable.remove(<item:easy_villagers:breeder>);
craftingTable.remove(<item:easy_villagers:converter>);
craftingTable.remove(<item:easy_villagers:incubator>);

craftingTable.addShaped("easy_breeder", <item:easy_villagers:breeder>, [
    [<item:minecraft:tinted_glass>, <item:minecraft:tinted_glass>, <item:minecraft:tinted_glass>],
    [<item:minecraft:tinted_glass>, <tag:items:minecraft:beds>, <item:minecraft:tinted_glass>],
    [<item:the_vault:chromatic_steel_ingot>, <tag:items:minecraft:planks>, <item:the_vault:chromatic_steel_ingot>]
]);

craftingTable.addShaped("easy_converter", <item:easy_villagers:converter>, [
    [<item:minecraft:tinted_glass>, <item:minecraft:tinted_glass>, <item:minecraft:tinted_glass>],
    [<item:minecraft:tinted_glass>, <item:minecraft:rotten_flesh>, <item:minecraft:tinted_glass>],
    [<item:the_vault:chromatic_steel_ingot>, <item:minecraft:mossy_cobblestone>, <item:the_vault:chromatic_steel_ingot>]
]);

craftingTable.addShaped("easy_incubator", <item:easy_villagers:incubator>, [
    [<item:minecraft:tinted_glass>, <item:minecraft:tinted_glass>, <item:minecraft:tinted_glass>],
    [<item:minecraft:tinted_glass>, <item:minecraft:air>, <item:minecraft:tinted_glass>],
    [<item:the_vault:chromatic_steel_ingot>, <tag:items:minecraft:wool>, <item:the_vault:chromatic_steel_ingot>]
]);
