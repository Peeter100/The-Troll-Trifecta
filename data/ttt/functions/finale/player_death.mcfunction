tag @s remove bossplayer
tag @s remove trollgetarget
tag @s remove wgrp1target
tag @s remove wgrp2target
tag @s remove wgrp3target
execute unless entity @a[tag=bossplayer,tag=wgrp1target] run tag @r[tag=bossplayer] add wgrp1target
execute unless entity @a[tag=bossplayer,tag=wgrp2target] run tag @r[tag=bossplayer] add wgrp2target
execute unless entity @a[tag=bossplayer,tag=wgrp3target] run tag @r[tag=bossplayer] add wgrp3target
scoreboard players set @s death 0
scoreboard players add @s deathvis 1

execute unless score @s deathreason matches 27 run tellraw @a [{"selector":"@s"},{"text":" perished in battle","color":"white"}]
execute if score @s deathreason matches 27 run tellraw @a [{"selector":"@s"},{"text":" offended a ","color":"white"},{"text":"Twitter User","color":"aqua"}]
scoreboard players set @s deathreason 0

execute as @e[type=marker,tag=sv,limit=1] run function ttt:finale/player_death_server