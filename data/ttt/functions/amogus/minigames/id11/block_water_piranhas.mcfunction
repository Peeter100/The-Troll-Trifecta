execute if entity @s[nbt={SelectedItem:{tag:{hoverwand:1b}}}] as @e[type=marker,tag=sv,limit=1] if score @s am_seensans matches ..1 run scoreboard players set @s am_seensans 2
scoreboard players set @s deathreason 57
particle crit ~ ~ ~ 0 0 0 1 150 force @a
particle block redstone_block ~ ~1 ~ .3 .5 .3 1 150 force @a
effect give @s instant_damage 1 100 true
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1000