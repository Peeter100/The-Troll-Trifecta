scoreboard players set @s deathreason 13
execute if entity @e[type=armor_stand,tag=sniper] run scoreboard players add @e[type=marker,tag=sv] fnf_carpetdeaths 1
#effect give @s instant_damage 1 100 true
kill @s