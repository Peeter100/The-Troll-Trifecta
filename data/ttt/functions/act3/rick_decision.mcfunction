execute if entity @s[scores={am_rickinteract=0}] run execute as @e[tag=rickhead] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1000
execute if entity @s[scores={am_rickinteract=0}] run tellraw @a {"text":"Rick will start helping you after next respawn!","color":"green"}

execute if entity @s[scores={am_rickinteract=1}] run stopsound @a master custom.t2s.rick.counter_offer_intro
execute if entity @s[scores={am_rickinteract=1}] run tellraw @a {"text":"Rick will be no longer helping you!","color":"red"}
execute if entity @s[scores={am_rickinteract=1}] run execute as @e[tag=rickhead] at @s run playsound custom.t2s.rick.counter_offer_outro master @a ~ ~ ~ 1000
execute if entity @s[scores={am_rickinteract=1}] run tellraw @a [{"text":"<","color":"white"},{"text":"Rick","color":"aqua"},{"text":"> "},{"text":"You're a bad person.","color":"aqua"}]

execute if entity @s[scores={am_rickinteract=0}] run scoreboard players set @s am_rickinteract -1
execute if entity @s[scores={am_rickinteract=1}] run scoreboard players set @s am_rickinteract 2

scoreboard players reset @a Game_Choice