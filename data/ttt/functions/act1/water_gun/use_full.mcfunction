scoreboard players set .wguncast npcbodytp 0
execute positioned ^ ^ ^0.5 run function ttt:act1/water_gun/use_full_raycast
tag @s remove wgunhit

particle falling_water ^ ^ ^0.5 .3 .3 .3 0 50 force @a
playsound item.bucket.empty_fish master @a ~ ~ ~
playsound entity.player.hurt_on_fire master @a ~ ~ ~ 0.3
#item modify entity @s weapon.mainhand ttt:empty_water_gun
scoreboard players set @s rc 0
#scoreboard players set @s gun_haswater 0
scoreboard players remove @s gun_haswater 1

execute unless score @s gun_haswater matches 1.. run item modify entity @s weapon.mainhand ttt:empty_water_gun
execute if score @s gun_haswater matches 1.. run item modify entity @s weapon.mainhand ttt:fill_water_gun_score