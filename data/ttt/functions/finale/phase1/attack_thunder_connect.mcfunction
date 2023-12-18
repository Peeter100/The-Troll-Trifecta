effect give 00000001-0000-0000-0000-000000000000 resistance 1 255 true
summon marker -118 11 21 {Tags:["forkill","bbolt"],NoGravity:1b}
spreadplayers -118 21 10 30 false @e[type=marker,tag=bbolt]
execute at @e[type=marker,tag=bbolt,limit=3,sort=random] run function ttt:finale/phase1/create_lightning
scoreboard players set @s am_gamescore3 0