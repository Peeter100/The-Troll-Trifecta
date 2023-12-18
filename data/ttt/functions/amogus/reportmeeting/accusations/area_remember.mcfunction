scoreboard players add @e[type=marker,tag=sv,limit=1] am_susscore 2
tellraw @a [{"text":"- ","color":"white"},{"selector":"@s"},{"text":" last remembers seeing you where the body is"}]
tag @s add hassusses