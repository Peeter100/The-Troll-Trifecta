execute as @a[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] at @s anchored eyes run particle item stone_axe ^-.4 ^ ^.2 .1 .1 .1 0 30 normal @a
execute as @a[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] at @s anchored eyes run playsound item.shield.break master @a ~ ~ ~
clear @a stone_axe
kill @e[type=item,nbt={Item:{id:"minecraft:stone_axe"}}]
scoreboard players set @a killvill 0