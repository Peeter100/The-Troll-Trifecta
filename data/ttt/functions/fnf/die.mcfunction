bossbar set minecraft:fnfhp visible false
title @a actionbar {"text":""}
title @a reset
scoreboard players reset @a Game_Choice
tp @a -3 25 161
scoreboard players set @s acttimer 5000
tag @s remove fnflyrics
execute at @p[tag=fnfplayer] run playsound custom.act1.mario.die1 master @a ~ ~ ~ 1000