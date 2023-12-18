# am_gamescore1 == is vase picked up
# am_gamescore2 == vase x
# am_gamescore3 == vase y
# am_gamescore4 == vase z
# am_visualizer == check prev vase pos
# am_gamescore5 == vase fall timer
# am_gamescore6 == jumprope progress
# am_gamescore7 == bald ruler time


scoreboard players add @s[scores={am_gametimer=..9998}] am_gametimer 1

execute if entity @s[scores={am_gametimer=..99}] if entity @a[tag=amplayer,scores={x=28..30,z=135..137}] run scoreboard players set @s am_gametimer 100

execute if entity @s[scores={am_gametimer=20}] run tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"Hey there!","color":"green"}]
execute if entity @s[scores={am_gametimer=37}] run tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"Look at my new vase!","color":"green"}]
execute if entity @s[scores={am_gametimer=85}] run tellraw @a [{"text":""},{"text":"Current Task:\n","color":"yellow","bold":true},{"text":"Look at Baldi's vase!","color":"light_purple"},{"text":"\nJumping & Sprinting: ","color":"yellow","italic":true},{"text":"Disabled","color":"red","italic":true}]
execute if entity @s[scores={am_gametimer=85}] as @r[tag=amplayer] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=91..99}] run scoreboard players set @s am_gametimer 90

execute if entity @s[scores={am_gametimer=100}] run function ttt:amogus/minigames/id4/stopsound_baldi
execute if entity @s[scores={am_gametimer=100}] as @r[tag=amplayer] at @s run playsound entity.item.pickup master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=100}] as @r[tag=amplayer] at @s run playsound custom.t2s.baldi.vase_instructions master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=100}] run tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"Show my vase to the principal so he can see it too!","color":"green"}]
execute if entity @s[scores={am_gametimer=190}] run tellraw @a [{"text":""},{"text":"Current Task:\n","color":"yellow","bold":true},{"text":"Take the vase to the principal!","color":"light_purple"},{"text":"\nJumping & Sprinting: ","color":"yellow","italic":true},{"text":"Disabled","color":"red","italic":true}]
execute if entity @s[scores={am_gametimer=190}] as @r[tag=amplayer] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1000

execute if entity @s[scores={am_gametimer=..199}] if entity @a[tag=amplayer,scores={x=33,z=137..139}] run scoreboard players set @s am_gametimer 200
execute if entity @s[scores={am_gametimer=196..199}] run scoreboard players set @s am_gametimer 195
execute if entity @s[scores={am_gametimer=200}] as @r[tag=amplayer] at @s run playsound custom.act3.bald.playtime_want_to_play master @a ~ ~ ~ 0.9
execute if entity @s[scores={am_gametimer=200}] run tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"I WANNA PLAY WITH SOMEONE!","color":"red"}]

execute if entity @s[scores={am_gametimer=200..239}] if entity @a[tag=amplayer,scores={x=33..36,z=142}] run scoreboard players set @s am_gametimer 240
execute if entity @s[scores={am_gametimer=236..239}] run scoreboard players set @s am_gametimer 235
execute if entity @s[scores={am_gametimer=240}] run function ttt:amogus/minigames/id4/stopsound_playtime
##execute if entity @s[scores={am_gametimer=240}] run effect give @a[tag=amplayer] slowness 99999 255 true
execute if entity @s[scores={am_gametimer=240}] as @r[tag=amplayer] at @s run playsound custom.act3.bald.playtime_jumprope_intro master @a ~ ~ ~ 0.9
execute if entity @s[scores={am_gametimer=240}] run tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"JUMPROPE 10 TIMES IN A ROW!","color":"red"}]
execute if entity @s[scores={am_gametimer=295}] run tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"ONCE YOU DO, I'LL LET YOU GO!","color":"red"}]
execute if entity @s[scores={am_gametimer=352}] run tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"READY?","color":"red"}]
execute if entity @s[scores={am_gametimer=367}] run tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"GO!!","color":"red"}]
execute if entity @s[scores={am_gametimer=240..399}] as @a[tag=amplayer,scores={z=..141}] at @s run tp @s ~ ~ 142

execute if entity @s[scores={am_gametimer=400..499}] run function ttt:amogus/minigames/id4/jumprope_tick

execute if entity @s[scores={am_gametimer=527..536}] as @e[type=armor_stand,tag=playtime] at @s run tp @s ~ ~ ~0.2
execute if entity @s[scores={am_gametimer=537..612}] as @e[type=armor_stand,tag=playtime] at @s run tp @s ~-0.2 ~ ~
execute if entity @s[scores={am_gametimer=527}] run fill 36 22 143 33 22 143 air
execute if entity @s[scores={am_gametimer=527}] run tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"WOW, THAT'S GREAT!","color":"red"}]
execute if entity @s[scores={am_gametimer=579}] run tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"LET'S PLAY AGAIN!","color":"red"}]
execute if entity @s[scores={am_gametimer=621}] run tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"SOMETIME SOON...","color":"red"}]
execute if entity @s[scores={am_gametimer=696..699}] run scoreboard players set @s am_gametimer 695

execute if entity @s[scores={am_gametimer=743}] run function ttt:amogus/minigames/id4/task_complete

execute if entity @s[scores={am_gametimer=100..}] unless entity @a[tag=amplayer,nbt={Inventory:[{tag:{gloves:1b}}]}] run function ttt:amogus/minigames/id4/gloves



execute if entity @a[tag=amplayer,scores={rc=1..}] if entity @s[scores={am_gamescore1=0}] as @a[tag=amplayer] at @s if entity @e[type=armor_stand,tag=vase,distance=0..2.5] anchored eyes facing entity @e[type=armor_stand,tag=vase,limit=1] feet anchored feet positioned ^ ^ ^1 positioned ~ ~0.25 ~ rotated as @s positioned ^ ^ ^-1 if entity @s[distance=0..0.25] run function ttt:amogus/minigames/id4/vase_pickup
execute if entity @a[tag=amplayer,scores={rc=1..}] if entity @s[scores={am_gamescore1=0}] as @a[tag=amplayer,x_rotation=50..90] at @s if entity @e[type=armor_stand,tag=vase,distance=0..0.75] run function ttt:amogus/minigames/id4/vase_pickup
execute if entity @a[tag=amplayer,scores={rc=1..}] if entity @s[scores={am_gamescore1=1..}] as @a[tag=amplayer] at @s run function ttt:amogus/minigames/id4/vase_drop

execute if entity @s[scores={am_gamescore1=0}] if entity @e[type=armor_stand,tag=vase] run function ttt:amogus/minigames/id4/tick_no_vase
execute if entity @s[scores={am_gamescore1=1..}] if entity @e[type=armor_stand,tag=vase] run function ttt:amogus/minigames/id4/tick_vase
execute if entity @s[scores={am_gametimer=857..}] unless entity @e[type=armor_stand,tag=vase] run function ttt:amogus/minigames/id4/tick_angry


execute as @e[type=armor_stand,tag=baldnpc] at @s run tp @s ~ ~ ~ facing entity @p[tag=amplayer]
scoreboard players add @e[type=armor_stand,tag=npcbody] npcbodytp 1
execute as @e[type=armor_stand,tag=shadowbody,scores={npcbodytp=10..}] at @s run tp @s @e[type=armor_stand,tag=shadowhead,limit=1]
execute as @e[type=armor_stand,tag=sniperbody,scores={npcbodytp=10..}] at @s run tp @s @e[type=armor_stand,tag=sniperhead,limit=1]
scoreboard players set @e[type=armor_stand,tag=npcbody,scores={npcbodytp=10..}] npcbodytp 0