# am_gamescore1 == customer id
# am_gamescore2 == customer countdown
# am_gamescore3 == customer countdown (in seconds)
# am_gamescore4 == customer countdown backup
# am_gamescore5 == operation value2
# am_gamescore6 == operation value3
# am_gamescore7 == bald ruler time (by default -1)

scoreboard players add @s[scores={am_gametimer=..9998}] am_gametimer 1
scoreboard players remove @s[scores={am_gamescore2=-999..}] am_gamescore2 1
fill 36 27 141 37 27 141 minecraft:oak_fence_gate[open=false] replace minecraft:oak_fence_gate[open=true]

execute if entity @s[scores={am_gametimer=11}] as @r[tag=amplayer] at @s run playsound custom.t2s.baldi.cafeteria_intro master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=11}] run tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"Welcome to my cafeteria!","color":"green"}]
execute if entity @s[scores={am_gametimer=55}] run tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"Serve all of the guests in line with the items behind you!","color":"green"}]
execute if entity @s[scores={am_gametimer=138}] run tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"You will have 15 seconds to serve each guest before they get angry!","color":"green"}]
execute if entity @s[scores={am_gametimer=237}] run tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"It's really that simple!","color":"green"}]
execute if entity @s[scores={am_gametimer=285}] run tellraw @a [{"text":""},{"text":"Current Task:\n","color":"yellow","bold":true},{"text":"Run Baldi's Cafeteria!","color":"light_purple"},{"text":"\nJumping & Sprinting: ","color":"yellow","italic":true},{"text":"Disabled","color":"red","italic":true}]
execute if entity @s[scores={am_gametimer=285}] as @r[tag=amplayer] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1000

execute if entity @s[scores={am_gametimer=296}] as @r[tag=amplayer] at @s run playsound custom.act3.rock master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=297..301,am_gamescore1=0}] as @e[tag=customer] at @s run tp @s ~ ~ ~0.2
execute if entity @s[scores={am_gametimer=295..301,am_gamescore1=1..}] as @e[tag=customer] at @s run tp @s ~ ~ ~0.2
execute if entity @s[scores={am_gametimer=303}] run function ttt:amogus/minigames/id6/service_start
execute if entity @s[scores={am_gametimer=305}] run scoreboard players set @s am_gametimer 304

execute if entity @s[scores={am_gamescore1=1}] run function ttt:amogus/minigames/id6/service1
execute if entity @s[scores={am_gamescore1=2}] run function ttt:amogus/minigames/id6/service2
execute if entity @s[scores={am_gamescore1=3}] run function ttt:amogus/minigames/id6/service3
execute if entity @s[scores={am_gamescore1=4}] run function ttt:amogus/minigames/id6/service4

execute if entity @s[scores={am_gamescore2=-1000}] run function ttt:amogus/minigames/id4/tick_angry

execute if entity @e[type=armor_stand,tag=doorinteract,tag=locked,tag=!forceclose] if entity @a[tag=amplayer,scores={x=24..28,z=144..148}] as @e[type=armor_stand,tag=doorinteract] at @s run function ttt:amogus/minigames/id6/faculty_open

execute if entity @e[type=armor_stand,tag=doorinteract,tag=!locked,tag=!forceopen] unless entity @a[tag=amplayer,scores={x=24..28,z=144..148}] as @e[type=armor_stand,tag=doorinteract] at @s run function ttt:amogus/minigames/id6/faculty_close

execute as @e[tag=baldnpc] at @s run tp @s ~ ~ ~ facing entity @p[tag=amplayer]
scoreboard players add @e[tag=baldnpchead] npcbodytp 1
execute as @e[tag=baldnpchead,scores={npcbodytp=10..}] at @s run tp @e[tag=baldnpcbody,distance=0..0.25] @s
scoreboard players set @e[tag=baldnpchead,scores={npcbodytp=10..}] npcbodytp 0