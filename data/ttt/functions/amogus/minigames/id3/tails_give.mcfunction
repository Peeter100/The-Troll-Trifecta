execute as @e[tag=tailshead] at @s run playsound custom.t2s.tails.emerald_quartz_give master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Thanks!","color":"gold"}]
item replace entity @e[type=armor_stand,tag=tailsarms,limit=1] weapon.mainhand with gold_ingot{CustomModelData:52}
clear @a
kill @e[type=item]

scoreboard players set @s am_gametimer 1694