playsound entity.blaze.shoot master @a ~ ~ ~ 1000
item replace entity 00000003-0000-0000-0000-000000000000 weapon.mainhand with chain{CustomModelData:219}
tp @s ~ ~ ~ facing entity 00000004-0000-0000-0000-000000000000 eyes
execute at 00000004-0000-0000-0000-000000000000 anchored eyes facing entity @s eyes positioned ^ ^ ^-10 run function ttt:finale/phase2/trollge_attack_raycast
execute if predicate ttt:10ch run schedule function ttt:finale/phase2/trollge_attackcancel_schedule 2t replace
execute as 00000004-0000-0000-0000-000000000000 at @s run function ttt:finale/phase2/p100_dodgeattack

execute as 00000004-0000-0000-0000-000000000000 positioned ~ 23 ~ if entity @s[distance=..9] as @e[type=marker,tag=sv,limit=1] run function ttt:finale/phase2/attack_flybash_convert