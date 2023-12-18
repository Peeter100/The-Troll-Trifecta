#execute if entity @s[scores={am_gametimer=30}] run item replace entity @e[tag=tailshead] weapon.mainhand with gold_ingot{CustomModelData:62}
execute if entity @s[scores={am_gametimer=30}] at @e[tag=tailshead] run playsound custom.t2s.tails.emerald_intro_long master @a ~ ~ ~ 1000

execute if entity @s[scores={am_gametimer=30}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Huh...","color":"gold"}]
execute if entity @s[scores={am_gametimer=30}] run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:64}
execute if entity @s[scores={am_gametimer=43}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Wait...","color":"gold"}]
execute if entity @s[scores={am_gametimer=43}] run item replace entity @e[type=armor_stand,tag=tailsarms,limit=1] weapon.mainhand with gold_ingot{CustomModelData:56}
execute if entity @s[scores={am_gametimer=55}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Something seems off about you.","color":"gold"}]
execute if entity @s[scores={am_gametimer=94}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"You're not a crewmate!","color":"gold"}]
execute if entity @s[scores={am_gametimer=94}] run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:61}
execute if entity @s[scores={am_gametimer=94}] run item replace entity @e[type=armor_stand,tag=tailsarms,limit=1] weapon.mainhand with gold_ingot{CustomModelData:52}
execute if entity @s[scores={am_gametimer=123}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Have you seen how ridiculous you look while walking?","color":"gold"}]
execute if entity @s[scores={am_gametimer=187}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"It's you, Minecrafter!","color":"gold"}]
execute if entity @s[scores={am_gametimer=214}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"We're all going through something, huh?","color":"gold"}]
execute if entity @s[scores={am_gametimer=214}] run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:63}
execute if entity @s[scores={am_gametimer=214}] run item replace entity @e[type=armor_stand,tag=tailsarms,limit=1] weapon.mainhand with gold_ingot{CustomModelData:56}
execute if entity @s[scores={am_gametimer=261}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"This world is really strange.","color":"gold"}]
execute if entity @s[scores={am_gametimer=261}] run item replace entity @e[type=armor_stand,tag=tailsarms,limit=1] weapon.mainhand with gold_ingot{CustomModelData:52}
execute if entity @s[scores={am_gametimer=300}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"The rings...","color":"gold"}]
execute if entity @s[scores={am_gametimer=314}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"The toad houses...","color":"gold"}]
execute if entity @s[scores={am_gametimer=335}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Circus Park...","color":"gold"}]
execute if entity @s[scores={am_gametimer=356}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"...and Baldi's Schoolhouse?","color":"gold"}]
execute if entity @s[scores={am_gametimer=388}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"It's like a universal collapse!","color":"gold"}]
execute if entity @s[scores={am_gametimer=422}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"But I'm not the only one here!","color":"gold"}]
execute if entity @s[scores={am_gametimer=422}] run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:61}
execute if entity @s[scores={am_gametimer=460}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"I found ","color":"gold"},{"text":"Shadow","color":"#C42626"},{"text":"!","color":"gold"}]
execute if entity @s[scores={am_gametimer=460}] run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:65}
execute if entity @s[scores={am_gametimer=486}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"He told me that he can sense energy of the Chaos Emeralds.","color":"gold"}]
execute if entity @s[scores={am_gametimer=486}] run item replace entity @e[type=armor_stand,tag=tailshead,limit=1] armor.head with gold_ingot{CustomModelData:61}
execute if entity @s[scores={am_gametimer=552}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"If we find all of them,","color":"gold"}]
execute if entity @s[scores={am_gametimer=579}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"I'll be able to create a portal back to our universe,","color":"gold"}]
execute if entity @s[scores={am_gametimer=633}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"then come back here and fix everything!","color":"gold"}]
execute if entity @s[scores={am_gametimer=683}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"I wanted to make a machine to find them, but I don't have any materials on me.","color":"gold"}]
execute if entity @s[scores={am_gametimer=683}] run data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:63}}],Pose:{Head:[15f,20f,0f]}}
# 809

execute if entity @s[scores={am_gametimer=784}] at @e[tag=tailshead] run playsound custom.t2s.tails.emerald_intro master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=784}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"I'm gonna need some observers.","color":"gold"}]
execute if entity @s[scores={am_gametimer=784}] run data merge entity @e[type=armor_stand,tag=tailshead,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:61}}],Pose:{Head:[0f,0f,0f]}}
execute if entity @s[scores={am_gametimer=784}] run item replace entity @e[type=armor_stand,tag=tailsarms,limit=1] weapon.mainhand with gold_ingot{CustomModelData:56}
execute if entity @s[scores={am_gametimer=825}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"They need 6 cobblestone, 2 redstone dust and 1 quartz each.","color":"gold"}]
execute if entity @s[scores={am_gametimer=904}] run tellraw @a [{"text":"<","color":"white"},{"text":"Tails","color":"gold"},{"text":"> "},{"text":"Can you find some quartz for me?","color":"gold"}]
execute if entity @s[scores={am_gametimer=904}] run item replace entity @e[type=armor_stand,tag=tailsarms,limit=1] weapon.mainhand with gold_ingot{CustomModelData:52}
execute if entity @s[scores={am_gametimer=943}] run function ttt:amogus/minigames/id3/orders

execute if entity @s[scores={am_gametimer=1004}] run tellraw @a [{"text":""},{"text":"Current Task:\n","color":"yellow","bold":true},{"text":"Get Tails some quartz!","color":"light_purple"},{"text":"\nJumping & Sprinting: ","color":"yellow","italic":true},{"text":"Enabled","color":"green","italic":true}]
execute if entity @s[scores={am_gametimer=1004}] at @r[tag=amplayer] run playsound entity.player.levelup master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=1004}] run scoreboard players set @s am_seentails 1
# 1130