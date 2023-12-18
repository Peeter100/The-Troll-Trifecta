execute if score @s death matches 1.. unless score @s deathreason matches -1 run function ttt:finale/player_death
execute unless entity @s[tag=bossplayer] if entity @s[scores={x=-118,y=11,z=21}] run function ttt:finale/player_respawn
execute if score @s y matches ..11 unless entity @s[scores={x=-118,z=21}] if entity @s[tag=bossplayer] run function ttt:finale/player_drown
execute if entity @s[nbt={OnGround:1b}] unless entity @s[scores={x=-144..-92,z=-5..47}] run effect give @s instant_damage 1 150 true

execute if score @s hp matches 20..39 run scoreboard players add @s hpregen 1