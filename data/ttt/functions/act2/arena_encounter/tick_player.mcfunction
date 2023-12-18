# Runs as player

particle dust 0.5 0.9 1 1 ~ ~1 ~ .2 .5 .2 0 3 normal @a
execute if block ~ ~ ~ water run function ttt:act2/arena_encounter/water_boil
execute if block ~ ~ ~ pointed_dripstone[waterlogged=true] run function ttt:act2/arena_encounter/water_boil
execute if entity @s[nbt={SelectedItem:{tag:{hoverwand:1b}}},scores={wand_energy=1..}] run scoreboard players remove @s wand_energy 2