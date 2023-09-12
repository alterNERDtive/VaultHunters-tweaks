import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.loot.table.LootTableManager;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.loot.condition.builder.LootConditionBuilder;
import crafttweaker.api.loot.condition.DamageSourceLootCondition;
import crafttweaker.api.predicate.DamageSourcePredicate;
import crafttweaker.api.loot.condition.KilledByPlayerLootCondition;
import crafttweaker.api.loot.condition.WeatherCheckLootCondition;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.predicate.EntityPredicate;
import crafttweaker.api.predicate.EntityEquipmentPredicate;
import crafttweaker.api.predicate.ItemPredicate;
import stdlib.List;

<tag:blocks:minecraft:mineable/pickaxe>.add(<block:auxiliaryblocks:purple_diorite>);
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:auxiliaryblocks:dark_purple_diorite>);

<block:auxiliaryblocks:purple_diorite>.addLootModifier("add_purple_diorite", CommonLootModifiers.add(<item:auxiliaryblocks:purple_diorite>));
<block:auxiliaryblocks:dark_purple_diorite>.addLootModifier("add_dark_purple_diorite", CommonLootModifiers.add(<item:auxiliaryblocks:dark_purple_diorite>));