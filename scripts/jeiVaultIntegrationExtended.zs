import mods.jei.category.Custom;
import mods.jei.JEI;
import mods.jei.category.SimpleJeiCategory;
import mods.jei.category.JeiCategory;
import crafttweaker.api.text.TextComponent;
import mods.jei.component.JeiDrawable;
import mods.jei.recipe.JeiRecipeGraphics;
import crafttweaker.api.resource.ResourceLocation;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;
import mods.jei.component.JeiIngredient;
import mods.jei.recipe.JeiRecipeGraphics;


//Utility functions
function lootItem(item as string, minQuantity as int, maxQuantity as int, chance as float) as IItemStack {
    if (minQuantity == maxQuantity){
        return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"Chance: " + chance + "%\",\"italic\":false,\"color\":\"gray\"}]"]}})*minQuantity;
    }
  return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"Amount: " + minQuantity + " - " + maxQuantity + "\",\"italic\":false,\"color\":\"gray\"}]","[{\"text\":\"Chance: " + chance + "%\",\"italic\":false,\"color\":\"gray\"}]"]}})*minQuantity;
}

function letterItem(letter as string, color as string) as IItemStack{
    var item = <item:neoncraft2:wallneon_letter_${letter}_${color}>;
    item.clearTooltip();
    return item;
}

function makeJEIGrid(cat as Custom, row as int, col as int, isInput as bool) as void {
    cat.background = JeiDrawable.blank(7 + col * 21, 7 + row * 21) as JeiDrawable;

    for row_i in 0 .. row {
        for col_i in 0 .. col {
            cat.addDrawable(5 + (col_i * 21), 5 + (row_i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
            cat.addSlot(col * row_i + col_i, 6 + (col_i * 21), 6 + (row_i * 21), isInput); //confused why it's +6 and not +5

        }
    }
}

function makeJEIGridWithName(cat as Custom, row as int, col as int, isInput as bool) as void {
    cat.background = JeiDrawable.blank(7 + col * 21, 7 + (row + 1) * 21) as JeiDrawable;
    for col_i in 0 .. col {
        cat.addSlot(col_i, 6 + (col_i * 21), 6, isInput);
    }
    
    for row_i in 1 .. row + 1 {
        for col_i in 0 .. col {
            cat.addDrawable(5 + (col_i * 21), 5 + (row_i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
            cat.addSlot(col * row_i + col_i, 6 + (col_i * 21), 6 + (row_i * 21), isInput); //confused why it's +6 and not +5

        }
    }
}

// Mystery Box
var mysteryBox = JeiCategory.create<Custom>("mystery_box", new TextComponent("Mystery Box"), <item:the_vault:mystery_box>, [<item:the_vault:mystery_box>]) as Custom;
makeJEIGrid(mysteryBox, 1, 6, false);

mysteryBox.addRecipe([
    lootItem("minecraft:diamond", 1, 8, 38.96),
    lootItem("minecraft:emerald", 1, 8, 38.96),
    lootItem("the_vault:gem_larimar", 1, 8, 19.48),
    lootItem("the_vault:gem_echo", 1, 1, 1.22),
    lootItem("the_vault:vault_platinum", 1, 1, 1.22),
    lootItem("the_vault:gem_pog", 1, 2, 0.15),
    lootItem("the_vault:gem_pog", 1, 2, 0.15),
    lootItem("the_vault:gem_pog", 1, 2, 0.15),
    lootItem("the_vault:gem_pog", 1, 2, 0.15),
    lootItem("the_vault:gem_pog", 1, 2, 0.15),
    lootItem("the_vault:gem_pog", 1, 2, 0.15),
    lootItem("the_vault:gem_pog", 1, 2, 0.15),
    lootItem("the_vault:gem_pog", 1, 2, 0.15),
    lootItem("the_vault:gem_pog", 1, 2, 0.15)
], []);

JEI.addCategory(mysteryBox);

// Mod Box
var modBox = JeiCategory.create<Custom>("mod_box", new TextComponent("Mod Box"), <item:the_vault:mod_box>, [<item:the_vault:mod_box>]) as Custom;
makeJEIGridWithName(modBox, 3, 7, false);


modBox.addRecipe([
    letterItem("n", "blue"),
    letterItem("o", "blue"),
    <item:minecraft:air>,
    letterItem("m", "blue"),
    letterItem("o", "blue"),
    letterItem("d", "blue"),
    letterItem("s", "blue"),
    lootItem("the_vault:knowledge_star_shard", 1, 4, 100.0)
], []);
modBox.addRecipe([
    letterItem("d", "blue"),
    letterItem("r", "blue"),
    letterItem("a", "blue"),
    letterItem("w", "blue"),
    letterItem("e", "blue"),
    letterItem("r", "blue"),
    letterItem("s", "blue"),
    lootItem("storagedrawers:upgrade_template", 4, 4, 18.87),
    lootItem("storagedrawers:void_upgrade", 1, 1, 15.09),
    lootItem("storagedrawers:iron_storage_upgrade", 1, 1, 14.15),
    lootItem("storagedrawers:gold_storage_upgrade", 1, 1, 13.21),
    lootItem("storagedrawers:diamond_storage_upgrade", 1, 1, 12.26),
    lootItem("storagedrawers:obsidian_storage_upgrade", 1, 1, 11.32),
    lootItem("framedcompactdrawers:framed_compact_drawer", 1, 1, 9.43),
    lootItem("framedcompactdrawers:framed_drawer_controller", 1, 1, 4.72),
    lootItem("storagedrawers:emerald_storage_upgrade", 1, 1, 0.94)
], []);
modBox.addRecipe([
    letterItem("r", "blue"),
    letterItem("s", "blue"),
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    lootItem("refinedstorage:speed_upgrade", 1, 1, 19.23),
    lootItem("refinedstorage:1k_storage_disk", 1, 1, 15.38),
    lootItem("refinedstorage:stack_upgrade", 1, 1, 14.42),
    lootItem("refinedstorage:4k_storage_disk", 1, 1, 13.46),
    lootItem("refinedstorage:external_storage", 1, 1, 12.5),
    lootItem("refinedstorage:disk_drive", 1, 1, 9.62),
    lootItem("refinedstorage:grid", 1, 1, 7.69),
    lootItem("refinedstorage:16k_storage_disk", 1, 1, 4.81),
    lootItem("refinedstorage:crafting_grid", 1, 1, 1.92),
    lootItem("refinedstorage:64k_storage_disk", 1, 1, 0.96)
], []);
modBox.addRecipe([
    letterItem("a", "blue"),
    letterItem("e", "blue"),
    <item:neoncraft2:wallneon_number_2_blue>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    lootItem("ae2:fluix_smart_dense_cable", 4, 4, 17.54),
    lootItem("ae2:item_storage_cell_1k", 1, 1, 14.04),
    lootItem("ae2:item_storage_cell_4k", 1, 1, 13.16),
    lootItem("ae2:speed_card", 2, 2, 13.16),
    lootItem("ae2:item_storage_cell_16k", 1, 1, 12.28),
    lootItem("ae2:storage_bus", 1, 1, 11.4),
    lootItem("ae2:drive", 1, 1, 8.77),
    lootItem("ae2:terminal", 1, 1, 7.02),
    lootItem("ae2:crafting_terminal", 1, 1, 1.75),
    lootItem("ae2:item_storage_cell_64k", 1, 1, 0.88)
], []);
modBox.addRecipe([
    letterItem("p", "blue"),
    letterItem("o", "blue"),
    letterItem("w", "blue"),
    letterItem("a", "blue"),
    letterItem("h", "blue"),
    <item:minecraft:air>,
    <item:minecraft:air>,
    lootItem("powah:furnator_starter", 1, 1, 15.89),
    lootItem("powah:solar_panel_starter", 1, 1, 10.6),
    lootItem("powah:thermo_generator_basic", 1, 1, 10.6),
    lootItem("powah:furnator_hardened", 1, 1, 9.27),
    lootItem("powah:solar_panel_hardened", 1, 1, 9.27),
    lootItem("powah:thermo_generator_hardened", 1, 1, 9.27),
    lootItem("powah:furnator_blazing", 1, 1, 5.3),
    lootItem("powah:solar_panel_blazing", 1, 1, 5.3),
    lootItem("powah:thermo_generator_blazing", 1, 1, 5.3),
    lootItem("powah:energizing_rod_blazing", 1, 1, 5.3),
    lootItem("powah:energy_cell_blazing", 1, 1, 5.3),
    lootItem("powah:ender_cell_hardened", 1, 1, 5.3),
    lootItem("powah:energizing_rod_niotic", 1, 1, 1.32),
    lootItem("powah:furnator_spirited", 1, 1, 0.66),
    lootItem("powah:thermo_generator_niotic", 1, 1, 0.66),
    lootItem("powah:energy_cell_spirited", 1, 1, 0.66)
], []);
modBox.addRecipe([
    letterItem("d", "blue"),
    letterItem("y", "blue"),
    letterItem("n", "blue"),
    letterItem("a", "blue"),
    letterItem("m", "blue"),
    letterItem("o", "blue"),
    letterItem("s", "blue"),
    lootItem("thermal:dynamo_stirling", 1, 1, 14.29),
    lootItem("thermal:dynamo_compression", 1, 1, 14.29),
    lootItem("thermal:dynamo_magmatic", 1, 1, 14.29),
    lootItem("thermal:dynamo_lapidary", 1, 1, 14.29),
    lootItem("thermal:dynamo_numismatic", 1, 1, 14.29),
    lootItem("thermal:dynamo_disenchantment", 1, 1, 14.29),
    lootItem("thermal:dynamo_gourmand", 1, 1, 14.29)
], []);
modBox.addRecipe([
    letterItem("t", "blue"),
    letterItem("h", "blue"),
    letterItem("e", "blue"),
    letterItem("r", "blue"),
    letterItem("m", "blue"),
    letterItem("a", "blue"),
    letterItem("l", "blue"),
    lootItem("thermal:device_nullifier", 1, 1, 24.69),
    lootItem("thermal:device_water_gen", 1, 1, 19.75),
    lootItem("thermal:device_fisher", 1, 1, 14.81),
    lootItem("thermal:device_composter", 1, 1, 14.81),
    lootItem("thermal:machine_chiller", 1, 1, 9.88),
    lootItem("thermal:machine_sawmill", 1, 1, 9.88),
    lootItem("thermal:device_collector", 1, 1, 4.94),
    lootItem("thermal:device_rock_gen", 1, 1, 1.23)
], []);
modBox.addRecipe([
    letterItem("m", "blue"),
    letterItem("e", "blue"),
    letterItem("k", "blue"),
    <item:minecraft:air>,
    letterItem("g", "blue"),
    letterItem("e", "blue"),
    letterItem("n", "blue"),
    lootItem("mekanismgenerators:heat_generator", 1, 1, 33.9),
    lootItem("mekanismgenerators:solar_generator", 1, 1, 27.12),
    lootItem("mekanismgenerators:bio_generator", 1, 1, 27.12),
    lootItem("mekanismgenerators:advanced_solar_generator", 1, 1, 6.78),
    lootItem("mekanismgenerators:gas_burning_generator", 1, 1, 3.39),
    lootItem("mekanismgenerators:wind_generator", 1, 1, 1.69)
], []);
modBox.addRecipe([
    letterItem("c", "blue"),
    letterItem("r", "blue"),
    letterItem("e", "blue"),    
    letterItem("a", "blue"),
    letterItem("t", "blue"),
    letterItem("e", "blue"),
    <item:minecraft:air>,
    lootItem("create:gearbox", 1, 1, 25.81),
    lootItem("create:depot", 1, 1, 21.51),
    lootItem("create:mechanical_bearing", 1, 1, 17.2),
    lootItem("create:water_wheel", 1, 1, 12.9),
    lootItem("create:large_water_wheel", 1, 1, 8.6),
    lootItem("create:blaze_burner", 1, 1, 8.6),
    lootItem("create:mechanical_arm", 1, 1, 4.3),
    lootItem("create:cart_assembler", 1, 1, 1.08)
], []);
modBox.addRecipe([
    letterItem("m", "blue"),
    letterItem("e", "blue"),
    letterItem("k", "blue"),
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    lootItem("mekanism:upgrade_speed", 4, 4, 25.53),
    lootItem("mekanism:upgrade_energy", 4, 4, 25.53),
    lootItem("mekanism:basic_energy_cube", 1, 1, 17.02),
    lootItem("mekanism:basic_tier_installer", 1, 1, 15.96),
    lootItem("mekanism:advanced_tier_installer", 1, 1, 8.51),
    lootItem("mekanism:advanced_energy_cube", 1, 1, 4.26),
    lootItem("mekanism:elite_tier_installer", 1, 1, 2.13),
    lootItem("mekanism:elite_energy_cube", 1, 1, 1.06)
], []);
modBox.addRecipe([
    letterItem("b", "blue"),
    letterItem("o", "blue"),
    letterItem("t", "blue"),
    letterItem("a", "blue"),
    letterItem("n", "blue"),
    letterItem("i", "blue"),
    letterItem("a", "blue"),
    lootItem("botania:blacker_lotus", 1, 1, 21.54),
    lootItem("botania:gourmaryllis", 1, 1, 12.31),
    lootItem("botania:rosa_arcana", 1, 1, 12.31),
    lootItem("botania:overgrowth_seed", 1, 1, 10.77),
    lootItem("botania:munchdew", 1, 1, 9.23),
    lootItem("botania:entropinnyum", 1, 1, 6.15),
    lootItem("botania:kekimurus", 1, 1, 6.15),
    lootItem("botania:agricarnation", 1, 1, 6.15),
    lootItem("botania:marimorphosis", 1, 1, 6.15),
    lootItem("botania:bellethorn", 1, 1, 4.62),
    lootItem("botania:exoflame", 1, 1, 3.08),
    lootItem("botania:orechid", 1, 1, 0.77),
    lootItem("botania:loonium", 1, 1, 0.77)
], []);
modBox.addRecipe([
    letterItem("e", "blue"),
    letterItem("v", "blue"),
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    lootItem("easy_villagers:trader", 1, 1, 78.74),
    lootItem("easy_villagers:farmer", 1, 1, 15.75),
    lootItem("easy_villagers:iron_farm", 1, 1, 3.94),
    lootItem("easy_villagers:auto_trader", 1, 1, 1.57)
], []);

JEI.addCategory(modBox);

// Relic Booster Pack
var boosterPack = JeiCategory.create<Custom>("relic_booster_pack", new TextComponent("Relic Booster Pack"), <item:the_vault:relic_booster_pack>, [<item:the_vault:relic_booster_pack>]) as Custom;
makeJEIGrid(boosterPack, 8, 5, false);

function relicItem(relicID as string, chance as float) as IItemStack {
    return <item:the_vault:vault_relic_fragment>.withTag({VaultModelId: relicID, display: {Lore: ["[{\"text\":\"Chance: " + chance + "%\",\"italic\":false,\"color\":\"gray\"}]"]}});
}


boosterPack.addRecipe([
    relicItem("the_vault:relic/cupcake/frag1", 0.28),
    relicItem("the_vault:relic/cupcake/frag2", 0.28),
    relicItem("the_vault:relic/cupcake/frag3", 0.28),
    relicItem("the_vault:relic/cupcake/frag4", 0.28),
    relicItem("the_vault:relic/cupcake/frag5", 0.14),
    relicItem("the_vault:relic/elemental/frag1", 0.28),
    relicItem("the_vault:relic/elemental/frag2", 0.28),
    relicItem("the_vault:relic/elemental/frag3", 0.28),
    relicItem("the_vault:relic/elemental/frag4", 0.28),
    relicItem("the_vault:relic/elemental/frag5", 0.14),
    relicItem("the_vault:relic/miner/frag1", 0.28),
    relicItem("the_vault:relic/miner/frag2", 0.28),
    relicItem("the_vault:relic/miner/frag3", 0.28),
    relicItem("the_vault:relic/miner/frag4", 0.28),
    relicItem("the_vault:relic/miner/frag5", 0.14),
    relicItem("the_vault:relic/nazar/frag1", 0.28),
    relicItem("the_vault:relic/nazar/frag2", 0.28),
    relicItem("the_vault:relic/nazar/frag3", 0.28),
    relicItem("the_vault:relic/nazar/frag4", 0.28),
    relicItem("the_vault:relic/nazar/frag5", 0.14),
    relicItem("the_vault:relic/twitch/frag1", 0.28),
    relicItem("the_vault:relic/twitch/frag2", 0.28),
    relicItem("the_vault:relic/twitch/frag3", 0.28),
    relicItem("the_vault:relic/twitch/frag4", 0.28),
    relicItem("the_vault:relic/twitch/frag5", 0.14),
    relicItem("the_vault:relic/warrior/frag1", 0.28),
    relicItem("the_vault:relic/warrior/frag2", 0.28),
    relicItem("the_vault:relic/warrior/frag3", 0.28),
    relicItem("the_vault:relic/warrior/frag4", 0.28),
    relicItem("the_vault:relic/warrior/frag5", 0.14),
    relicItem("the_vault:relic/dragon/frag1", 0.28),
    relicItem("the_vault:relic/dragon/frag2", 0.28),
    relicItem("the_vault:relic/dragon/frag3", 0.28),
    relicItem("the_vault:relic/dragon/frag4", 0.28),
    relicItem("the_vault:relic/dragon/frag5", 0.14),
    relicItem("the_vault:relic/richity/frag1", 0.28),
    relicItem("the_vault:relic/richity/frag2", 0.28),
    relicItem("the_vault:relic/richity/frag3", 0.28),
    relicItem("the_vault:relic/richity/frag4", 0.28),
    relicItem("the_vault:relic/richity/frag5", 0.14)
], []);

JEI.addCategory(boosterPack);

// Mystery Egg
var mysteryEgg = JeiCategory.create<Custom>("mystery_egg", new TextComponent("Mystery Egg"), <item:the_vault:mystery_egg>, [<item:the_vault:mystery_egg>]) as Custom;
makeJEIGrid(mysteryEgg, 5, 6, false);

mysteryEgg.addRecipe([
    lootItem("minecraft:pig_spawn_egg", 1, 1, 19.53),
    lootItem("minecraft:sheep_spawn_egg", 1, 1, 15.62),
    lootItem("minecraft:chicken_spawn_egg", 1, 1, 12.5),
    lootItem("minecraft:cow_spawn_egg", 1, 1, 12.5),
    lootItem("minecraft:cod_spawn_egg", 1, 1, 4.69),
    lootItem("minecraft:mooshroom_spawn_egg", 1, 1, 3.12),
    lootItem("minecraft:rabbit_spawn_egg", 1, 1, 3.12),
    lootItem("minecraft:salmon_spawn_egg", 1, 1, 3.12),
    lootItem("minecraft:squid_spawn_egg", 1, 1, 3.12),
    lootItem("minecraft:bee_spawn_egg", 1, 1, 2.34),
    lootItem("minecraft:cat_spawn_egg", 1, 1, 1.95),
    lootItem("minecraft:goat_spawn_egg", 1, 1, 1.95),
    lootItem("minecraft:tropical_fish_spawn_egg", 1, 1, 1.95),
    lootItem("minecraft:dolphin_spawn_egg", 1, 1, 1.95),
    lootItem("minecraft:polar_bear_spawn_egg", 1, 1, 1.56),
    lootItem("minecraft:bat_spawn_egg", 1, 1, 1.56),
    lootItem("minecraft:parrot_spawn_egg", 1, 1, 1.56),
    lootItem("minecraft:pufferfish_spawn_egg", 1, 1, 1.56),
    lootItem("minecraft:donkey_spawn_egg", 1, 1, 1.56),
    lootItem("minecraft:axolotl_spawn_egg", 1, 1, 0.78),
    lootItem("minecraft:glow_squid_spawn_egg", 1, 1, 0.78),
    lootItem("minecraft:panda_spawn_egg", 1, 1, 0.78),
    lootItem("minecraft:strider_spawn_egg", 1, 1, 0.78),
    lootItem("minecraft:turtle_spawn_egg", 1, 1, 0.78),
    lootItem("alexsmobs:spawn_egg_flutter", 1, 1, 0.78)
], []);

JEI.addCategory(mysteryEgg);

// Mystery Hostile Egg
var mysteryHostileEgg = JeiCategory.create<Custom>("mystery_hostile_egg", new TextComponent("Mystery Hostile Egg"), <item:the_vault:mystery_hostile_egg>, [<item:the_vault:mystery_hostile_egg>]) as Custom;
makeJEIGrid(mysteryHostileEgg, 5, 6, false);

mysteryHostileEgg.addRecipe([
    lootItem("minecraft:cave_spider_spawn_egg", 1, 1, 10.7),
    lootItem("minecraft:skeleton_spawn_egg", 1, 1, 10.7),
    lootItem("minecraft:spider_spawn_egg", 1, 1, 10.7),
    lootItem("minecraft:stray_spawn_egg", 1, 1, 10.7),
    lootItem("minecraft:zombie_spawn_egg", 1, 1, 10.7),
    lootItem("minecraft:drowned_spawn_egg", 1, 1, 7.13),
    lootItem("minecraft:husk_spawn_egg", 1, 1, 7.13),
    lootItem("minecraft:enderman_spawn_egg", 1, 1, 5.35),
    lootItem("minecraft:creeper_spawn_egg", 1, 1, 4.46),
    lootItem("minecraft:slime_spawn_egg", 1, 1, 3.57),
    lootItem("minecraft:zombified_piglin_spawn_egg", 1, 1, 2.14),
    lootItem("minecraft:blaze_spawn_egg", 1, 1, 1.78),
    lootItem("minecraft:piglin_spawn_egg", 1, 1, 1.78),
    lootItem("minecraft:piglin_brute_spawn_egg", 1, 1, 1.78),
    lootItem("minecraft:pillager_spawn_egg", 1, 1, 1.78),
    lootItem("minecraft:magma_cube_spawn_egg", 1, 1, 1.43),
    lootItem("minecraft:ghast_spawn_egg", 1, 1, 0.89),
    lootItem("minecraft:guardian_spawn_egg", 1, 1, 0.89),
    lootItem("minecraft:witch_spawn_egg", 1, 1, 0.89),
    lootItem("minecraft:phantom_spawn_egg", 1, 1, 0.71),
    lootItem("minecraft:shulker_spawn_egg", 1, 1, 0.71),
    lootItem("minecraft:vindicator_spawn_egg", 1, 1, 0.71),
    lootItem("minecraft:wither_skeleton_spawn_egg", 1, 1, 0.71),
    lootItem("minecraft:evoker_spawn_egg", 1, 1, 0.53),
    lootItem("minecraft:elder_guardian_spawn_egg", 1, 1, 0.36),
    lootItem("minecraft:hoglin_spawn_egg", 1, 1, 0.36),
    lootItem("minecraft:ravager_spawn_egg", 1, 1, 0.36),
    lootItem("minecraft:zoglin_spawn_egg", 1, 1, 0.36),
    lootItem("cagerium:iron_golem_spawn_egg", 1, 1, 0.36),
    lootItem("cagerium:wither_spawn_egg", 1, 1, 0.36)
], []);

JEI.addCategory(mysteryHostileEgg);



// CATEGORIES BELOW WERE MADE BY FREUD, i've just added the letters on top
// original script is in VH discord: https://discord.com/channels/889424759018901514/1129896297479033022


//remove original categories made by freud
JEI.hideCategory("crafttweaker:vault_crystal");
JEI.hideCategory("crafttweaker:black_market");


// Black Market

var blackMarket = JeiCategory.create<Custom>("black_market_letters", new TextComponent("Black Market"), <item:the_vault:black_market>, [<item:the_vault:black_market>]) as Custom;
makeJEIGridWithName(blackMarket,8,8, false);

function blackMarketItem(item as string, minPrice as int, maxPrice as int, chance as float, quantity as int, minLevel as int) as IItemStack {
  return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]","[{\"text\":\"Min Price: " + minPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"Max Price: " + maxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"Min Level: " + minLevel + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"Chance: " + chance + "%\",\"italic\":false,\"color\":\"gray\"}]"]}}) * quantity;
}

function blackMarketOmegaItem(item as string, minPrice as int, maxPrice as int, chance as float, quantity as int, minLevel as int) as IItemStack {
  return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]","[{\"text\":\"OMEGA\",\"bold\":true,\"color\":\"purple\"}]","[{\"text\":\"Min Price: " + minPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"Max Price: " + maxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"Min Level: " + minLevel + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"Chance: " + chance + "%\",\"italic\":false,\"color\":\"gray\"}]"]}}) * quantity;
}

blackMarket.addRecipe([
    letterItem("n", "blue"),
    letterItem("o", "blue"),
    letterItem("r", "blue"),
    letterItem("m", "blue"),
    letterItem("a", "blue"),
    letterItem("l", "blue"),
    <item:minecraft:air>,
    <item:minecraft:air>,
    blackMarketItem("the_vault:knowledge_star", 2400, 4800, 1.52, 1, 0),
    blackMarketItem("the_vault:bitter_lemon", 800, 1400, 1.22, 1, 0),
    blackMarketItem("the_vault:vault_platinum", 400, 800, 2.43, 1, 0),
    blackMarketItem("the_vault:regret_orb", 100, 200, 4.86, 1, 0),
    blackMarketItem("the_vault:jewel", 300, 500, 6.08, 1, 0),
    blackMarketItem("the_vault:helmet", 250, 500, 3.65, 1, 0),
    blackMarketItem("the_vault:chestplate", 250, 500, 3.65, 1, 0),
    blackMarketItem("the_vault:leggings", 250, 500, 3.65, 1, 0),
    blackMarketItem("the_vault:boots", 250, 500, 3.65, 1, 0),
    blackMarketItem("the_vault:sword", 250, 500, 3.65, 1, 0),
    blackMarketItem("the_vault:axe", 250, 500, 3.65, 1, 0),
    blackMarketItem("the_vault:shield", 250, 500, 2.74, 1, 0),
    blackMarketItem("the_vault:wand", 250, 500, 2.74, 1, 0),
    blackMarketItem("the_vault:idol_benevolent", 400, 800, 1.06, 1, 0),
    blackMarketItem("the_vault:idol_omniscient", 400, 800, 1.06, 1, 0),
    blackMarketItem("the_vault:idol_timekeeper", 400, 800, 1.06, 1, 0),
    blackMarketItem("the_vault:idol_malevolence", 400, 800, 1.06, 1, 0),
    blackMarketItem("the_vault:magnet", 250, 500, 3.65, 1, 0),
    blackMarketItem("the_vault:unidentified_relic_fragment", 400, 800, 1.22, 1, 0),
    blackMarketItem("the_vault:bounty_pearl", 200, 400, 2.43, 1, 0),
    blackMarketItem("minecraft:emerald", 40, 100, 9.73, 32, 0),
    blackMarketItem("minecraft:elytra", 200, 600, 3.65, 1, 0),
    blackMarketItem("the_vault:black_chromatic_steel_nugget", 400, 800, 6.08, 4, 0),
    blackMarketItem("minecraft:wither_skeleton_skull", 100, 200, 3.65, 1, 0),
    blackMarketItem("the_vault:vault_diamond", 600, 1000, 4.86, 4, 0),
    blackMarketItem("the_vault:gem_pog", 1000, 1400, 1.22, 1, 0),
    blackMarketItem("sophisticatedbackpacks:backpack", 1600, 2400, 1.22, 1, 0),
    blackMarketItem("the_vault:chromatic_steel_ingot", 400, 800, 9.73, 6, 0),
    blackMarketItem("the_vault:repair_core", 300, 500, 4.86, 1, 0),
    blackMarketItem("the_vault:blank_key", 6000, 12000, 0.21, 1, 20),
    blackMarketItem("the_vault:unidentified_artifact", 20000, 32000, 0.11, 1, 20),
    blackMarketItem("the_vault:sour_orange", 2000, 4000, 0.21, 1, 20),
    blackMarketItem("the_vault:mod_box", 400, 800, 3.42, 1, 20),
    blackMarketItem("the_vault:opportunistic_focus", 3200, 6000, 0.43, 1, 20),
    blackMarketItem("the_vault:resilient_focus", 2000, 4000, 0.43, 1, 20),
    blackMarketItem("the_vault:fundamental_focus", 900, 1400, 1.71, 1, 20),
    blackMarketItem("the_vault:trinket", 8000, 12000, 0.21, 1, 20),
    blackMarketItem("the_vault:trinket_scrap", 4000, 8000, 0.43, 1, 20),
    blackMarketItem("the_vault:phoenix_feather", 800, 1200, 0.86, 1, 20),
    blackMarketItem("the_vault:eye_of_avarice", 1500, 3000, 0.43, 1, 20),
    blackMarketItem("the_vault:vault_catalyst_chaos", 6000, 12000, 0.43, 1, 20),
    blackMarketItem("the_vault:soul_flame", 400, 800, 3.42, 1, 20),
    blackMarketItem("the_vault:crystal_seal_empty", 200, 600, 3.42, 1, 20),
    blackMarketItem("the_vault:crystal_seal_cake", 400, 800, 1.71, 1, 20),
    blackMarketItem("the_vault:mote_purity", 800, 1200, 0.86, 1, 20),
    blackMarketItem("the_vault:mote_sanctity", 3200, 6000, 0.21, 1, 20),
    blackMarketItem("the_vault:mystery_egg", 200, 400, 2.14, 1, 20),
    blackMarketItem("the_vault:mystery_hostile_egg", 400, 800, 0.86, 1, 20),
    blackMarketItem("the_vault:artifact_fragment", 2000, 4000, 0.21, 1, 20),
    blackMarketItem("the_vault:wooden_chest_scroll", 400, 800, 0.43, 1, 20),
    blackMarketItem("the_vault:ornate_chest_scroll", 800, 1600, 0.43, 1, 20),
    blackMarketItem("the_vault:living_chest_scroll", 800, 1600, 0.43, 1, 20),
    blackMarketItem("the_vault:gilded_chest_scroll", 800, 1600, 0.43, 1, 20),
    blackMarketItem("the_vault:vault_catalyst_infused", 600, 1200, 0.64, 1, 20),
    blackMarketItem("the_vault:black_chromatic_steel_ingot", 600, 1000, 4.28, 1, 20),
    blackMarketItem("the_vault:spicy_hearty_burger", 3000, 3600, 1.28, 1, 20),
    blackMarketItem("the_vault:chaotic_focus", 400, 600, 3.22, 3, 50),
    blackMarketItem("the_vault:inscription", 1000, 1800, 3.22, 1, 50),
    blackMarketItem("the_vault:faceted_focus", 400, 800, 1.61, 1, 50),
    blackMarketItem("sophisticatedbackpacks:iron_backpack", 1600, 2400, 0.60, 1, 50),
    blackMarketItem("the_vault:waxing_focus", 1300, 1900, 1.08, 1, 75),
    blackMarketItem("the_vault:waning_focus", 1300, 1900, 1.08, 1, 75)
], []);


blackMarket.addRecipe([
    letterItem("o", "purple"),
    letterItem("m", "purple"),
    letterItem("e", "purple"),
    letterItem("g", "purple"),
    letterItem("a", "purple"),
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    blackMarketOmegaItem("the_vault:knowledge_star", 800, 1600, 4.51, 1, 0),
    blackMarketOmegaItem("the_vault:helmet", 350, 600, 6.02, 1, 0),
    blackMarketOmegaItem("the_vault:chestplate", 350, 600, 6.02, 1, 0),
    blackMarketOmegaItem("the_vault:leggings", 350, 600, 6.02, 1, 0),
    blackMarketOmegaItem("the_vault:boots", 350, 600, 6.02, 1, 0),
    blackMarketOmegaItem("the_vault:sword", 350, 600, 6.02, 1, 0),
    blackMarketOmegaItem("the_vault:axe", 250, 500, 6.02, 1, 0),
    blackMarketOmegaItem("the_vault:shield", 350, 600, 4.89, 1, 0),
    blackMarketOmegaItem("the_vault:wand", 350, 600, 4.89, 1, 0),
    blackMarketOmegaItem("the_vault:idol_benevolent", 500, 900, 1.50, 1, 0),
    blackMarketOmegaItem("the_vault:idol_omniscient", 500, 900, 1.50, 1, 0),
    blackMarketOmegaItem("the_vault:idol_timekeeper", 500, 900, 1.50, 1, 0),
    blackMarketOmegaItem("the_vault:idol_malevolence", 500, 900, 1.50, 1, 0),
    blackMarketOmegaItem("the_vault:magnet", 350, 600, 6.02, 1, 0),
    blackMarketOmegaItem("the_vault:jewel", 300, 600, 12.03, 1, 0),
    blackMarketOmegaItem("the_vault:vault_diamond", 400, 800, 12.03, 5, 0),
    blackMarketOmegaItem("the_vault:gem_pog", 800, 1000, 6.02, 1, 0),
    blackMarketOmegaItem("sophisticatedbackpacks:backpack", 1000, 1800, 3.01, 1, 0),
    blackMarketOmegaItem("the_vault:bounty_pearl", 500, 900, 3.01, 5, 0),
    blackMarketOmegaItem("the_vault:bitter_lemon", 600, 800, 1.50, 1, 0),
    blackMarketOmegaItem("the_vault:blank_key", 6000, 8000, 0.37, 1, 20),
    blackMarketOmegaItem("the_vault:unidentified_artifact", 16000, 24000, 0.18, 1, 20),
    blackMarketOmegaItem("the_vault:sour_orange", 1500, 3000, 0.37, 1, 20),
    blackMarketOmegaItem("the_vault:opportunistic_focus", 2400, 5000, 0.74, 1, 20),
    blackMarketOmegaItem("the_vault:resilient_focus", 1500, 3000, 0.74, 1, 20),
    blackMarketOmegaItem("the_vault:fundamental_focus", 800, 1200, 2.95, 3, 20),
    blackMarketOmegaItem("the_vault:trinket", 6000, 10000, 0.37, 1, 20),
    blackMarketOmegaItem("the_vault:trinket_scrap", 3000, 6000, 0.74, 1, 20),
    blackMarketOmegaItem("the_vault:phoenix_feather", 800, 1200, 1.47, 2, 20),
    blackMarketOmegaItem("the_vault:eye_of_avarice", 1000, 1800, 0.74, 1, 20),
    blackMarketOmegaItem("the_vault:vault_catalyst_chaos", 6000, 12000, 0.74, 1, 20),
    blackMarketOmegaItem("the_vault:mote_purity", 500, 900, 1.47, 1, 20),
    blackMarketOmegaItem("the_vault:mote_sanctity", 2400, 4800, 0.37, 1, 20),
    blackMarketOmegaItem("the_vault:artifact_fragment", 1500, 3000, 0.37, 1, 20),
    blackMarketOmegaItem("the_vault:vault_catalyst_infused", 500, 900, 1.10, 1, 20),
    blackMarketOmegaItem("sophisticatedbackpacks:iron_backpack", 1000, 1800, 1.57, 1, 50),
    blackMarketOmegaItem("the_vault:faceted_focus", 500, 800, 3.13, 2, 50),
    blackMarketOmegaItem("the_vault:inscription", 1000, 1600, 4.70, 1, 50),
    blackMarketOmegaItem("the_vault:waxing_focus", 1400, 1900, 1.92, 3, 75),
    blackMarketOmegaItem("the_vault:waning_focus", 1400, 1900, 1.92, 3, 75)
], []);

JEI.addCategory(blackMarket);


// Crystal Recipes
var crystal = JeiCategory.create<Custom>("vault_crystal_letters", new TextComponent("Vault Crystal"), <item:the_vault:vault_altar>, [<item:the_vault:vault_altar>]) as Custom;
makeJEIGridWithName(crystal, 6, 8, true);

function crystalItem(item as string, level as string, pool as string) as IItemStack {
  return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"Level: \",\"italic\":false,\"color\":\"white\",\"bold\":true},{\"text\":\""+ level + "\",\"color\":\"white\",\"bold\":false},{\"text\":\"\",\"color\":\"dark_purple\",\"bold\":false}]" as string, "[{\"text\":\"Pool: \",\"italic\":false,\"color\":\"white\",\"bold\":true},{\"text\":\"" + pool +"\",\"color\":\"white\",\"bold\":false}]" as string]}});
}

// Farmable Items
crystal.addRecipe([], [
    letterItem("f","blue"),
    letterItem("a","blue"),
    letterItem("r","blue"),
    letterItem("m","blue"),
    letterItem("a","blue"),
    letterItem("b","blue"),
    letterItem("l","blue"),
    letterItem("e","blue"),
    [crystalItem("minecraft:wheat_seeds", 0, "Farmable")],
    [crystalItem("minecraft:oak_leaves", 0, "Farmable"),
    crystalItem("minecraft:spruce_leaves", 0, "Farmable"),
    crystalItem("minecraft:birch_leaves", 0, "Farmable"),
    crystalItem("minecraft:jungle_leaves", 0, "Farmable"),
    crystalItem("minecraft:acacia_leaves", 0, "Farmable"),
    crystalItem("minecraft:dark_oak_leaves", 0, "Farmable"),
    crystalItem("minecraft:azalea_leaves", 0, "Farmable"),
    crystalItem("minecraft:flowering_azalea_leaves", 0, "Farmable"),
    crystalItem("ecologics:coconut_leaves", 0, "Farmable"),
    crystalItem("ecologics:walnut_leaves", 0, "Farmable")],
    [crystalItem("minecraft:sugar_cane", 10, "Farmable")],
    [crystalItem("minecraft:carrot", 10, "Farmable")],
    [crystalItem("minecraft:potato", 10, "Farmable")],
    [crystalItem("minecraft:wheat", 10, "Farmable")],
    [crystalItem("minecraft:kelp", 10, "Farmable")],
    [crystalItem("minecraft:cactus", 10, "Farmable")],
    [crystalItem("minecraft:bamboo", 10, "Farmable")],
    [crystalItem("minecraft:vine", 10, "Farmable")],
    [crystalItem("minecraft:beetroot", 10, "Farmable")],
    [crystalItem("minecraft:snowball", 10, "Farmable")],
    [crystalItem("minecraft:pumpkin", 10, "Farmable")],
    [crystalItem("minecraft:melon", 10, "Farmable")],
    [crystalItem("minecraft:azalea", 10, "Farmable"),
    crystalItem("minecraft:flowering_azalea", 10, "Farmable")],
    [crystalItem("minecraft:sea_pickle", 10, "Farmable")],
    [crystalItem("minecraft:dandelion", 10, "Farmable"),
    crystalItem("minecraft:poppy", 10, "Farmable"),
    crystalItem("minecraft:blue_orchid", 10, "Farmable"),
    crystalItem("minecraft:allium", 10, "Farmable"),
    crystalItem("minecraft:azure_bluet", 10, "Farmable"),
    crystalItem("minecraft:oxeye_daisy", 10, "Farmable"),
    crystalItem("minecraft:cornflower", 10, "Farmable"),
    crystalItem("minecraft:lily_of_the_valley", 10, "Farmable")],
    [crystalItem("minecraft:beetroot_seeds", 10, "Farmable")],
    [crystalItem("minecraft:sweet_berries", 10, "Farmable")],
    [crystalItem("minecraft:apple", 10, "Farmable")],
    [crystalItem("minecraft:seagrass", 10, "Farmable")],
    [crystalItem("minecraft:brown_mushroom", 20, "Farmable")],
    [crystalItem("minecraft:red_mushroom", 20, "Farmable")],
    [crystalItem("minecraft:red_tulip", 20, "Farmable"),
    crystalItem("minecraft:orange_tulip", 20, "Farmable"),
    crystalItem("minecraft:white_tulip", 20, "Farmable"),
    crystalItem("minecraft:pink_tulip", 20, "Farmable")],
    [crystalItem("minecraft:sunflower", 20, "Farmable"),
    crystalItem("minecraft:rose_bush", 20, "Farmable"),
    crystalItem("minecraft:peony", 20, "Farmable"),
    crystalItem("minecraft:lilac", 20, "Farmable")],
    [crystalItem("minecraft:glow_lichen", 20, "Farmable")],
    [crystalItem("minecraft:clay_ball", 20, "Farmable")],
    [crystalItem("minecraft:brick", 20, "Farmable")],
    [crystalItem("minecraft:glow_berries", 20, "Farmable")],
    [crystalItem("minecraft:nether_wart", 20, "Farmable")],
    [crystalItem("minecraft:twisting_vines", 40, "Farmable")],
    [crystalItem("minecraft:weeping_vines", 40, "Farmable")],
    [crystalItem("minecraft:big_dripleaf", 40, "Farmable")],
    [crystalItem("minecraft:crimson_fungus", 40, "Farmable")],
    [crystalItem("minecraft:warped_fungus", 40, "Farmable")],
    [crystalItem("minecraft:chorus_fruit", 40, "Farmable")],
    [crystalItem("minecraft:lily_pad", 40, "Farmable")],
    [crystalItem("minecraft:wither_rose", 75, "Farmable")]
]);

// Resource
crystal.addRecipe([], [
    letterItem("r","blue"),
    letterItem("e","blue"),
    letterItem("s","blue"),
    letterItem("o","blue"),
    letterItem("u","blue"),
    letterItem("r","blue"),
    letterItem("c","blue"),
    letterItem("e","blue"),
    [crystalItem("minecraft:cobblestone", 0, "Resource"),
    crystalItem("minecraft:diorite", 0, "Resource"),
    crystalItem("minecraft:andesite", 0, "Resource"),
    crystalItem("minecraft:granite", 0, "Resource")],
    [crystalItem("minecraft:dirt", 0, "Resource")],
    [crystalItem("minecraft:stone", 10, "Resource")],
    [crystalItem("minecraft:gravel", 10, "Resource")],
    [crystalItem("minecraft:sand", 10, "Resource"),
    crystalItem("minecraft:red_sand", 10, "Resource")],
    [crystalItem("minecraft:oak_log", 10, "Resource"),
    crystalItem("minecraft:spruce_log", 10, "Resource"),
    crystalItem("minecraft:birch_log", 10, "Resource"),
    crystalItem("minecraft:jungle_log", 10, "Resource"),
    crystalItem("minecraft:acacia_log", 10, "Resource"),
    crystalItem("minecraft:dark_oak_log", 10, "Resource")],
    [crystalItem("minecraft:moss_block", 10, "Resource")],
    [crystalItem("minecraft:white_wool", 10, "Resource"),
    crystalItem("minecraft:orange_wool", 10, "Resource"),
    crystalItem("minecraft:magenta_wool", 10, "Resource"),
    crystalItem("minecraft:light_blue_wool", 10, "Resource"),
    crystalItem("minecraft:yellow_wool", 10, "Resource"),
    crystalItem("minecraft:lime_wool", 10, "Resource"),
    crystalItem("minecraft:pink_wool", 10, "Resource"),
    crystalItem("minecraft:gray_wool", 10, "Resource"),
    crystalItem("minecraft:light_gray_wool", 10, "Resource"),
    crystalItem("minecraft:cyan_wool", 10, "Resource"),
    crystalItem("minecraft:purple_wool", 10, "Resource"),
    crystalItem("minecraft:blue_wool", 10, "Resource"),
    crystalItem("minecraft:brown_wool", 10, "Resource"),
    crystalItem("minecraft:green_wool", 10, "Resource"),
    crystalItem("minecraft:red_wool", 10, "Resource"),
    crystalItem("minecraft:black_wool", 10, "Resource")],
    [crystalItem("minecraft:glass", 10, "Resource"),
    crystalItem("minecraft:white_stained_glass", 10, "Resource"),
    crystalItem("minecraft:orange_stained_glass", 10, "Resource"),
    crystalItem("minecraft:magenta_stained_glass", 10, "Resource"),
    crystalItem("minecraft:light_blue_stained_glass", 10, "Resource"),
    crystalItem("minecraft:yellow_stained_glass", 10, "Resource"),
    crystalItem("minecraft:lime_stained_glass", 10, "Resource"),
    crystalItem("minecraft:pink_stained_glass", 10, "Resource"),
    crystalItem("minecraft:gray_stained_glass", 10, "Resource"),
    crystalItem("minecraft:light_gray_stained_glass", 10, "Resource"),
    crystalItem("minecraft:cyan_stained_glass", 10, "Resource"),
    crystalItem("minecraft:purple_stained_glass", 10, "Resource"),
    crystalItem("minecraft:blue_stained_glass", 10, "Resource"),
    crystalItem("minecraft:brown_stained_glass", 10, "Resource"),
    crystalItem("minecraft:green_stained_glass", 10, "Resource"),
    crystalItem("minecraft:red_stained_glass", 10, "Resource"),
    crystalItem("minecraft:black_stained_glass", 10, "Resource")],
    [crystalItem("minecraft:smooth_stone", 10, "Resource")],
    [crystalItem("minecraft:bricks", 10, "Resource")],
    [crystalItem("minecraft:netherrack", 10, "Resource")],
    [crystalItem("minecraft:soul_sand", 10, "Resource")],
    [crystalItem("minecraft:basalt", 10, "Resource")],
    [crystalItem("minecraft:white_terracotta", 10, "Resource"),
    crystalItem("minecraft:orange_terracotta", 10, "Resource"),
    crystalItem("minecraft:magenta_terracotta", 10, "Resource"),
    crystalItem("minecraft:light_blue_terracotta", 10, "Resource"),
    crystalItem("minecraft:yellow_terracotta", 10, "Resource"),
    crystalItem("minecraft:lime_terracotta", 10, "Resource"),
    crystalItem("minecraft:pink_terracotta", 10, "Resource"),
    crystalItem("minecraft:gray_terracotta", 10, "Resource"),
    crystalItem("minecraft:light_gray_terracotta", 10, "Resource"),
    crystalItem("minecraft:cyan_terracotta", 10, "Resource"),
    crystalItem("minecraft:purple_terracotta", 10, "Resource"),
    crystalItem("minecraft:blue_terracotta", 10, "Resource"),
    crystalItem("minecraft:brown_terracotta", 10, "Resource"),
    crystalItem("minecraft:green_terracotta", 10, "Resource"),
    crystalItem("minecraft:red_terracotta", 10, "Resource"),
    crystalItem("minecraft:black_terracotta", 10, "Resource"),
    crystalItem("minecraft:terracotta", 10, "Resource")],
    [crystalItem("minecraft:deepslate", 10, "Resource"),
    crystalItem("minecraft:cobbled_deepslate", 10, "Resource")],
    [crystalItem("minecraft:tuff", 10, "Resource")],
    [crystalItem("minecraft:mossy_cobblestone", 20, "Resource")],
    [crystalItem("minecraft:obsidian", 20, "Resource")],
    [crystalItem("minecraft:ice", 20, "Resource")],
    [crystalItem("minecraft:white_concrete", 20, "Resource"),
    crystalItem("minecraft:orange_concrete", 20, "Resource"),
    crystalItem("minecraft:magenta_concrete", 20, "Resource"),
    crystalItem("minecraft:light_blue_concrete", 20, "Resource"),
    crystalItem("minecraft:yellow_concrete", 20, "Resource"),
    crystalItem("minecraft:lime_concrete", 20, "Resource"),
    crystalItem("minecraft:pink_concrete", 20, "Resource"),
    crystalItem("minecraft:gray_concrete", 20, "Resource"),
    crystalItem("minecraft:light_gray_concrete", 20, "Resource"),
    crystalItem("minecraft:cyan_concrete", 20, "Resource"),
    crystalItem("minecraft:purple_concrete", 20, "Resource"),
    crystalItem("minecraft:blue_concrete", 20, "Resource"),
    crystalItem("minecraft:brown_concrete", 20, "Resource"),
    crystalItem("minecraft:green_concrete", 20, "Resource"),
    crystalItem("minecraft:red_concrete", 20, "Resource"),
    crystalItem("minecraft:black_concrete", 20, "Resource")],
    [crystalItem("minecraft:white_concrete_powder", 20, "Resource"),
    crystalItem("minecraft:orange_concrete_powder", 20, "Resource"),
    crystalItem("minecraft:magenta_concrete_powder", 20, "Resource"),
    crystalItem("minecraft:light_blue_concrete_powder", 20, "Resource"),
    crystalItem("minecraft:yellow_concrete_powder", 20, "Resource"),
    crystalItem("minecraft:lime_concrete_powder", 20, "Resource"),
    crystalItem("minecraft:pink_concrete_powder", 20, "Resource"),
    crystalItem("minecraft:gray_concrete_powder", 20, "Resource"),
    crystalItem("minecraft:light_gray_concrete_powder", 20, "Resource"),
    crystalItem("minecraft:cyan_concrete_powder", 20, "Resource"),
    crystalItem("minecraft:purple_concrete_powder", 20, "Resource"),
    crystalItem("minecraft:blue_concrete_powder", 20, "Resource"),
    crystalItem("minecraft:brown_concrete_powder", 20, "Resource"),
    crystalItem("minecraft:green_concrete_powder", 20, "Resource"),
    crystalItem("minecraft:red_concrete_powder", 20, "Resource"),
    crystalItem("minecraft:black_concrete_powder", 20, "Resource")],
    [crystalItem("minecraft:blackstone", 20, "Resource")],
    [crystalItem("minecraft:dripstone_block", 20, "Resource")],
    [crystalItem("minecraft:prismarine", 20, "Resource")],
    [crystalItem("minecraft:soul_soil", 40, "Resource")],
    [crystalItem("minecraft:purpur_block", 40, "Resource")],
    [crystalItem("minecraft:mycelium", 40, "Resource")],
    [crystalItem("minecraft:end_stone", 40, "Resource")],
    [crystalItem("minecraft:magma_block", 40, "Resource")],
    [crystalItem("minecraft:nether_wart_block", 40, "Resource")],
    [crystalItem("minecraft:warped_wart_block", 40, "Resource")],
    [crystalItem("minecraft:shroomlight", 40, "Resource")],
    [crystalItem("minecraft:podzol", 40, "Resource")],
    [crystalItem("minecraft:blue_ice", 75, "Resource")],
    [crystalItem("minecraft:crimson_stem", 75, "Resource")],
    [crystalItem("minecraft:warped_stem", 75, "Resource")],
    [crystalItem("minecraft:crying_obsidian", 75, "Resource")],
    [crystalItem("minecraft:calcite", 75, "Resource")],
    [crystalItem("minecraft:rooted_dirt", 75, "Resource")]
]);

// Mob

crystal.addRecipe([], [
    letterItem("m","blue"),
    letterItem("o","blue"),
    letterItem("b","blue"),
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    [crystalItem("minecraft:stick", 0, "Mob")],
    [crystalItem("minecraft:string", 10, "Mob")],
    [crystalItem("minecraft:rotten_flesh", 10, "Mob")],
    [crystalItem("minecraft:bone", 10, "Mob")],
    [crystalItem("minecraft:spider_eye", 10, "Mob")],
    [crystalItem("minecraft:arrow", 10, "Mob")],
    [crystalItem("minecraft:feather", 10, "Mob")],
    [crystalItem("minecraft:porkchop", 10, "Mob")],
    [crystalItem("minecraft:beef", 10, "Mob")],
    [crystalItem("minecraft:chicken", 10, "Mob")],
    [crystalItem("minecraft:rabbit", 10, "Mob")],
    [crystalItem("minecraft:slime_ball", 10, "Mob")],
    [crystalItem("minecraft:egg", 10, "Mob")],
    [crystalItem("minecraft:leather", 10, "Mob")],
    [crystalItem("minecraft:rabbit_hide", 10, "Mob")],
    [crystalItem("minecraft:white_dye", 10, "Mob"),
    crystalItem("minecraft:orange_dye", 10, "Mob"),
    crystalItem("minecraft:magenta_dye", 10, "Mob"),
    crystalItem("minecraft:light_blue_dye", 10, "Mob"),
    crystalItem("minecraft:yellow_dye", 10, "Mob"),
    crystalItem("minecraft:lime_dye", 10, "Mob"),
    crystalItem("minecraft:pink_dye", 10, "Mob"),
    crystalItem("minecraft:gray_dye", 10, "Mob"),
    crystalItem("minecraft:light_gray_dye", 10, "Mob"),
    crystalItem("minecraft:cyan_dye", 10, "Mob"),
    crystalItem("minecraft:purple_dye", 10, "Mob"),
    crystalItem("minecraft:blue_dye", 10, "Mob"),
    crystalItem("minecraft:brown_dye", 10, "Mob"),
    crystalItem("minecraft:green_dye", 10, "Mob"),
    crystalItem("minecraft:red_dye", 10, "Mob"),
    crystalItem("minecraft:black_dye", 10, "Mob")],
    [crystalItem("minecraft:poisonous_potato", 10, "Mob")],
    [crystalItem("minecraft:mutton", 10, "Mob")],
    [crystalItem("minecraft:salmon", 10, "Mob")],
    [crystalItem("minecraft:cod", 10, "Mob")],
    [crystalItem("minecraft:cocoa_beans", 10, "Mob")],
    [crystalItem("minecraft:gunpowder", 10, "Mob")],
    [crystalItem("minecraft:honey_bottle", 20, "Mob")],
    [crystalItem("minecraft:blaze_rod", 20, "Mob")],
    [crystalItem("minecraft:ender_pearl", 20, "Mob")],
    [crystalItem("minecraft:rabbit_foot", 20, "Mob")],
    [crystalItem("minecraft:honeycomb", 20, "Mob")],
    [crystalItem("minecraft:ink_sac", 20, "Mob")],
    [crystalItem("minecraft:glow_ink_sac", 20, "Mob")],
    [crystalItem("minecraft:pufferfish", 20, "Mob")],
    [crystalItem("minecraft:tropical_fish", 40, "Mob")],
    [crystalItem("minecraft:ghast_tear", 40, "Mob")],
    [crystalItem("minecraft:magma_cream", 40, "Mob")],
    [crystalItem("minecraft:nautilus_shell", 40, "Mob")],
    [crystalItem("minecraft:turtle_egg", 40, "Mob")],
    [crystalItem("minecraft:wither_skeleton_skull", 40, "Mob")],
    [crystalItem("minecraft:phantom_membrane", 75, "Mob")]
]);

// Misc
crystal.addRecipe([], [
    letterItem("m","blue"),
    letterItem("i","blue"),
    letterItem("s","blue"),
    letterItem("c","blue"),
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    [crystalItem("minecraft:iron_ingot", 0, "Misc")],
    [crystalItem("minecraft:copper_ingot", 0, "Misc")],
    [crystalItem("minecraft:coal", 0, "Misc"),
    crystalItem("minecraft:charcoal", 0, "Misc")],
    [crystalItem("minecraft:pointed_dripstone", 10, "Misc")],
    [crystalItem("minecraft:gold_ingot", 10, "Misc")],
    [crystalItem("minecraft:redstone", 10, "Misc")],
    [crystalItem("minecraft:emerald", 10, "Misc")],
    [crystalItem("minecraft:lapis_lazuli", 10, "Misc")],
    [crystalItem("minecraft:amethyst_shard", 10, "Misc")],
    [crystalItem("minecraft:diamond", 10, "Misc")],
    [crystalItem("minecraft:spore_blossom", 10, "Misc")],
    [crystalItem("minecraft:glowstone_dust", 20, "Misc")],
    [crystalItem("minecraft:quartz", 20, "Misc")],
    [crystalItem("minecraft:name_tag", 20, "Misc")],
    [crystalItem("minecraft:prismarine_shard", 40, "Misc")],
    [crystalItem("minecraft:prismarine_crystals", 40, "Misc")],
    [crystalItem("minecraft:chorus_flower", 40, "Misc")],
    [crystalItem("minecraft:dead_brain_coral", 40, "Misc"),
    crystalItem("minecraft:dead_bubble_coral", 40, "Misc"),
    crystalItem("minecraft:dead_fire_coral", 40, "Misc"),
    crystalItem("minecraft:dead_horn_coral", 40, "Misc"),
    crystalItem("minecraft:dead_tube_coral", 40, "Misc"),
    crystalItem("minecraft:dead_tube_coral_fan", 40, "Misc"),
    crystalItem("minecraft:dead_brain_coral_fan", 40, "Misc"),
    crystalItem("minecraft:dead_bubble_coral_fan", 40, "Misc"),
    crystalItem("minecraft:dead_fire_coral_fan", 40, "Misc"),
    crystalItem("minecraft:dead_horn_coral_fan", 40, "Misc")],
    [crystalItem("minecraft:brain_coral", 40, "Misc"),
    crystalItem("minecraft:bubble_coral", 40, "Misc"),
    crystalItem("minecraft:fire_coral", 40, "Misc"),
    crystalItem("minecraft:horn_coral", 40, "Misc"),
    crystalItem("minecraft:tube_coral", 40, "Misc"),
    crystalItem("minecraft:tube_coral_fan", 40, "Misc"),
    crystalItem("minecraft:brain_coral_fan", 40, "Misc"),
    crystalItem("minecraft:bubble_coral_fan", 40, "Misc"),
    crystalItem("minecraft:fire_coral_fan", 40, "Misc"),
    crystalItem("minecraft:horn_coral_fan", 40, "Misc")],
    [crystalItem("minecraft:totem_of_undying", 40, "Misc")],
    [crystalItem("minecraft:saddle", 40, "Misc")],
    [crystalItem("minecraft:cobweb", 40, "Misc")],
    [crystalItem("minecraft:sponge", 75, "Misc")],
    [crystalItem("minecraft:nether_star", 75, "Misc")],
    [crystalItem("minecraft:trident", 75, "Misc")],
    [crystalItem("minecraft:music_disc_13", 90, "Misc"),
    crystalItem("minecraft:music_disc_cat", 90, "Misc"),
    crystalItem("minecraft:music_disc_blocks", 90, "Misc"),
    crystalItem("minecraft:music_disc_chirp", 90, "Misc"),
    crystalItem("minecraft:music_disc_far", 90, "Misc"),
    crystalItem("minecraft:music_disc_mall", 90, "Misc"),
    crystalItem("minecraft:music_disc_mellohi", 90, "Misc"),
    crystalItem("minecraft:music_disc_stal", 90, "Misc"),
    crystalItem("minecraft:music_disc_strad", 90, "Misc"),
    crystalItem("minecraft:music_disc_ward", 90, "Misc"),
    crystalItem("minecraft:music_disc_11", 90, "Misc"),
    crystalItem("minecraft:music_disc_wait", 90, "Misc"),
    crystalItem("minecraft:music_disc_otherside", 90, "Misc"),
    crystalItem("minecraft:music_disc_pigstep", 90, "Misc")]
]);

// Add category
JEI.addCategory(crystal);

