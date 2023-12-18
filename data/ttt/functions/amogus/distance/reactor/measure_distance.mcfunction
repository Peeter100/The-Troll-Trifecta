# tag @e[type=marker,tag=amhost,limit=1] add wrongway

scoreboard players set .current am_sabrange 0
execute positioned 21 1 47 facing entity @p[tag=amplayer] feet if score @e[type=marker,tag=sv,limit=1] am_sabid matches 1 run function ttt:amogus/distance/distance_raycast
execute if score .current am_sabrange >= .prev am_sabrange if score @e[type=marker,tag=sv,limit=1] am_sabid matches 1 run function ttt:amogus/distance/reactor/distance_fail
execute if score .current am_sabrange < .prev am_sabrange run function ttt:amogus/distance/reactor/distance_success
scoreboard players operation .prev am_sabrange = .current am_sabrange