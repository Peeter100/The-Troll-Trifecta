playsound item.bucket.fill master @a ~ ~ ~
#item modify entity @s weapon.mainhand ttt:fill_water_gun
scoreboard players set @s rc 0
#scoreboard players set @s gun_haswater 3
scoreboard players operation @s gun_haswater = @e[type=marker,tag=sv,limit=1] st_wgun
item modify entity @s weapon.mainhand ttt:fill_water_gun_score