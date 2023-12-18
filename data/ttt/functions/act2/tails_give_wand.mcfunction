scoreboard players set @s dialoguetime 100
kill @e[type=item,distance=..2]
stopsound @a master custom.t2s.tails.wand_pleasegive
playsound custom.t2s.tails.wand_sample master @a ~ ~ ~ 1000
tellraw @a [{"text":"<"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Stay here,","color":"gold"}]
data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {Pose:{Head:[0f,0f,0f]}}