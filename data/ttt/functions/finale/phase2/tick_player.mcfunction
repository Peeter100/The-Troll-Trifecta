execute if score @s rc matches 1.. if score @s ring_energy matches 10.. unless score @s ring_charge matches 100.. run function ttt:finale/phase2/tick_player_ring_use

execute if score @s ring_charge matches 1.. run scoreboard players remove @s ring_charge 1
execute if score @s ring_charge matches 110.. run function ttt:finale/phase2/tick_player_ring_dash
execute if score @s ring_charge matches 100 run scoreboard players set @s ring_charge 0

execute if score @s ring_energy matches ..49 run function ttt:finale/phase2/tick_player_ring1
execute if score @s ring_energy matches 50.. run function ttt:finale/phase2/tick_player_ring2

execute if score @s death matches 1.. unless score @s deathreason matches -1 run function ttt:finale/player_death
execute unless entity @s[tag=bossplayer] if entity @s[scores={x=-118,y=11,z=21}] run function ttt:finale/player_respawn
#execute if score @s y matches ..11 unless entity @s[scores={x=-118,z=21}] if entity @s[tag=bossplayer] run function ttt:finale/player_drown
execute if block ~ ~ ~ #ttt:water_hotgroup if entity @s[tag=bossplayer] run function ttt:finale/player_drown
execute if entity @s[nbt={OnGround:1b}] unless entity @s[scores={x=-144..-92,z=-5..47}] run effect give @s instant_damage 1 150 true

execute if score @s hp matches 20..39 run scoreboard players add @s hpregen 1