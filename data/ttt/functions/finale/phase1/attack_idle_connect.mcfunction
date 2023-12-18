scoreboard players set @s am_gamescore3 0

execute at 00000001-0000-0000-0000-000000000000 run playsound entity.blaze.shoot master @a ~ ~ ~ 1000
execute as 00000001-0000-0000-0000-000000000000 at @s anchored eyes run tp @s ~ ~ ~ facing entity 00000004-0000-0000-0000-000000000000 eyes
item replace entity 00000003-0000-0000-0000-000000000000 weapon.mainhand with chain{CustomModelData:67}
execute as 00000001-0000-0000-0000-000000000000 at 00000004-0000-0000-0000-000000000000 anchored eyes facing entity @s eyes positioned ^ ^ ^-10 run function ttt:finale/phase1/trollge_beamattack_raycast
execute as 00000004-0000-0000-0000-000000000000 at @s run function ttt:finale/phase1/trollge_beamattack_dodge