execute if entity @a[team=p,scores={y=13..14},nbt={OnGround:1b}] run scoreboard players set @e[type=marker,tag=sv,scores={cr_seensans=..1}] cr_seensans 1
execute unless entity @e[type=marker,tag=sv,tag=gotwand] run playsound custom.act1.treasure master @a ~ ~ ~ 1000
fill -34 12 0 -28 12 6 powder_snow replace snow_block
tag @e[type=marker,tag=sv] add gotwand