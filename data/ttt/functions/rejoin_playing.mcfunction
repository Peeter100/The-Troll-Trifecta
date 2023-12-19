#tellraw @s [{"text":"WARNING:","color":"red","bold":true},{"text":" If your client has a ","bold":false},{"text":"Lazy Chunk Loading"},{"text":" feature, it is highly recommended to ","bold":false},{"text":"turn it OFF"},{"text":" as it causes major TPS lag spikes in certain areas of the map.","bold":false}]

execute if entity @s[team=p] run gamemode adventure @s
execute if entity @s[team=p] if entity @e[type=marker,tag=sv,scores={deathtime=1..}] run tp @s 0 35 9
execute if entity @s[team=p] if entity @e[type=marker,tag=sv,scores={acttimer=0..,deathtime=0}] run scoreboard players set @s deathreason -1
execute if entity @s[team=p] if entity @e[type=marker,tag=sv,scores={acttimer=0..,deathtime=0}] run tellraw @a {"text":"Forced map restart due to a player relog!","color":"red","bold":true}
execute if entity @s[team=p] if entity @e[type=marker,tag=sv,scores={acttimer=0..,deathtime=0}] run function ttt:death
execute if entity @s[team=!p] run gamemode spectator @s
execute if entity @s[team=!p] run team join s @s

scoreboard players set @s[team=p] ms_seqid 50