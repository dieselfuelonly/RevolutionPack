# Vanilla
val cauldron = <minecraft:cauldron>;
val bucket = <minecraft:bucket>;
val hopper = <minecraft:hopper>;
val chest = <minecraft:chest>;
val anvil = <minecraft:anvil>;
val bars = <minecraft:iron_bars>;

val block = <RotaryCraft:rotarycraft_block_deco:0>;
val ingot = <RotaryCraft:rotarycraft_item_shaftcraft:1>;
val rod = <RotaryCraft:rotarycraft_item_shaftcraft:2>;
val base = <Railcraft:part.plate>;
val hammer = <CarpentersBlocks:itemCarpentersHammer>.anyDamage();

#remove all vanilla armor creation
recipes.remove(<minecraft:iron_boots>);
<minecraft:iron_boots>.addTooltip(format.white("DISABLED: Use HSLA Steel armor instead."));
recipes.remove(<minecraft:iron_leggings>);
<minecraft:iron_leggings>.addTooltip(format.white("DISABLED: Use HSLA Steel armor instead."));
recipes.remove(<minecraft:iron_chestplate>);
<minecraft:iron_chestplate>.addTooltip(format.white("DISABLED: Use HSLA Steel armor instead."));
recipes.remove(<minecraft:iron_helmet>);
<minecraft:iron_helmet>.addTooltip(format.white("DISABLED: Use HSLA Steel armor instead."));

recipes.remove(<minecraft:golden_boots>);
<minecraft:golden_boots>.addTooltip(format.white("DISABLED: Use HSLA Steel armor instead."));
recipes.remove(<minecraft:golden_leggings>);
<minecraft:golden_leggings>.addTooltip(format.white("DISABLED: Use HSLA Steel armor instead."));
recipes.remove(<minecraft:golden_chestplate>);
<minecraft:golden_chestplate>.addTooltip(format.white("DISABLED: Use HSLA Steel armor instead."));
recipes.remove(<minecraft:golden_helmet>);
<minecraft:golden_helmet>.addTooltip(format.white("DISABLED: Use HSLA Steel armor instead."));

recipes.remove(<minecraft:diamond_boots>);
<minecraft:diamond_boots>.addTooltip(format.white("DISABLED: Use HSLA Steel armor instead."));
recipes.remove(<minecraft:diamond_leggings>);
<minecraft:diamond_leggings>.addTooltip(format.white("DISABLED: Use HSLA Steel armor instead."));
recipes.remove(<minecraft:diamond_chestplate>);
<minecraft:diamond_chestplate>.addTooltip(format.white("DISABLED: Use HSLA Steel armor instead."));
recipes.remove(<minecraft:diamond_helmet>);
<minecraft:diamond_helmet>.addTooltip(format.white("DISABLED: Use HSLA Steel armor instead."));

#Vanilla items should use Steel plates
recipes.remove(cauldron);
recipes.addShaped(cauldron, [[base,null,base],[base,hammer.transformDamage(32),base],[base,base,base]]);

recipes.remove(bucket);
recipes.addShaped(bucket * 1, [[base,hammer.transformDamage(32),base], [null,base,null]]);

recipes.remove(hopper);
recipes.addShaped(hopper * 1, [[base,hammer.transformDamage(32),base],[base,chest,base],[null,base,null]]);

recipes.remove(anvil);
recipes.addShaped(anvil * 1, [[block,block,block],[null,ingot,null],[ingot,ingot,ingot]]);

recipes.remove(bars * 16);
mods.railcraft.Rolling.addShaped(bars * 16, [[rod,rod,rod],[rod,rod,rod]]);

recipes.remove(<RotaryCraft:rotarycraft_item_shaftcraft:10> * 3);
