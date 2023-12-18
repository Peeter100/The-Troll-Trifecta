# Using scoreboards because OnGround NBT is fucking inconsistent

execute if entity @s[nbt={Inventory:[{tag:{hoverwand:1b}}]}] run particle dust 0.9 0.945 0.35 1 ~ ~.05 ~ .1 .1 .1 0 1 normal @a

execute store result score @s caxis1 run data get entity @s Pos[1] 100
execute unless score @s caxis1 = @s caxis2 run tag @s add sh_inair

execute if entity @s[tag=sh_inair] run function ttt:act2/tails_shoes_inair
execute unless entity @s[tag=sh_inair] if block ~ ~-0.1 ~ snow_block if entity @s[nbt={Inventory:[{tag:{hoverwand:1b}}]}] run effect give @s jump_boost 1 1 true

#execute store result score @s caxis2 run data get entity @s Pos[1] 100
scoreboard players operation @s caxis2 = @s caxis1