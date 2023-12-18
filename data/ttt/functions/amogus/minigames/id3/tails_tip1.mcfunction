playsound custom.t2s.tails.emerald_tip1 master @a ~ ~ ~ 1000
tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Quartz spawns in the Nether, doesn't it?","color":"gold"}]
item replace entity @e[type=armor_stand,tag=tailsarms,limit=1] weapon.mainhand with gold_ingot{CustomModelData:56}
scoreboard players set @s am_gametimer 1294