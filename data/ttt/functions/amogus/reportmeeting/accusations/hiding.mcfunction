scoreboard players add @e[type=marker,tag=sv,limit=1] am_susscore 10
tellraw @a [{"text":"- ","color":"white"},{"selector":"@s"},{"text":" hasn't seen you in a while"}]
tag @s add hassusses