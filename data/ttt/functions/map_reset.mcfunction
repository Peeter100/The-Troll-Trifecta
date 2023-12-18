# troll reset

execute as @e[tag=globalhide] at @s run tp @s ~ 0 ~
scoreboard players reset * npcbodytp
kill @e[type=item]
kill @e[type=witch]
kill @e[type=arrow]
kill @e[type=small_fireball]
kill @e[tag=forkill]
tag @a remove noheal
tag @s remove silentdeath
scoreboard players set @a walking 0
scoreboard players set @a sprinting 0
scoreboard players set @a sneak 0
scoreboard players set @a deathreason 0
title @a reset
recipe take @a *


# GLOBAL STUFF THAT I DON'T FEEL LIKE CATEGORIZING
# or that looks horrible for map showcasing

time set noon
weather clear
worldborder warning distance 30

setblock 0 30 48 air destroy
clone -29 40 6 -25 46 10 -2 30 47
data merge block 0 28 48 {powered:0b}
fill -6 30 55 6 31 55 air
clone -20 39 7 1 40 12 -11 29 55
clone 30 31 56 30 34 56 24 32 38
# fill 29 38 49 29 33 49 vine[south=true]
setblock 4 32 45 air
setblock -4 32 45 air
fill 2 29 40 -2 29 38 grass_block replace air
fill -1 30 38 1 30 39 grass
setblock 6 31 60 potted_poppy
setblock -4 30 64 acacia_fence_gate[facing=south,in_wall=false,open=false,powered=false]
fill -5 29 64 -3 29 65 grass_block
setblock 14 31 80 acacia_fence_gate[facing=south,in_wall=false,open=false,powered=false]
setblock -17 33 87 acacia_stairs[facing=north,half=bottom,shape=straight,waterlogged=false]
setblock -16 34 86 acacia_slab[type=bottom]
fill 7 32 90 11 33 90 glass_pane[east=true,west=true]
fill 4 32 77 4 33 87 glass_pane[north=true,south=true] replace air
fill -11 29 115 -11 29 117 acacia_slab[type=top]
clone -34 41 137 -18 42 148 -11 28 143
clone 17 40 -1 26 40 12 37 40 40
clone 8 40 0 15 42 7 16 40 28
fill 5 34 162 5 35 162 stone

clone -35 10 19 -29 11 25 -34 12 0
fill -25 30 22 -37 31 22 air
fill -40 31 84 -33 37 84 oak_log replace air

clone -19 21 163 -15 25 163 -5 30 165

scoreboard players set @a weight 0
scoreboard players set @a drinkpotion 0
scoreboard players set @a ring_energy 100
scoreboard players set @a ring_charge 0
scoreboard players set @a killvill 0
scoreboard players set @a cr_killvex 0
scoreboard players set @a caxis1 0
scoreboard players set @a caxis2 0

scoreboard players set @s securitytime 0
scoreboard players set @s dialoguetime 0
scoreboard players set @s dialogueseq 0
scoreboard players set @s am_maintimer 0
scoreboard players set @s am_gametimer 0

scoreboard players reset @a Answer_Q1
scoreboard players reset @a Answer_Q2
scoreboard players reset @a Answer_Q3
scoreboard players reset @a Game_Choice
scoreboard players reset @a Sabotage_ID
scoreboard players reset @a Baldi_Answer
scoreboard players reset @a drinkpotion
scoreboard players reset @a mcdonalds

tag @a remove hungertext
tag @a remove offground
tag @a remove instadeath
tag @a remove parkourdone
tag @a remove blockcause
tag @a remove fnfplayer
tag @a remove backroomp
tag @a remove jbimmune
tag @a remove tailstarget
tag @a remove tailstext
tag @a remove 1hpchallenge
tag @a remove importantsans
tag @a remove importantund
tag @a remove undynequal
tag @a remove clashplayer
tag @a remove hadbow
tag @a remove armoredup
tag @a remove cannonfire
tag @a remove hastnt
tag @a remove oiled
tag @a remove amplayer
tag @a remove bossplayer
tag @a remove wgrp1target
tag @a remove wgrp2target
tag @a remove wgrp3target

tag @s remove stopbeat
tag @s remove hittick
tag @s remove gotwand
tag @s remove raining
tag @s remove preventdeath
tag @s remove globalmsg1
tag @s remove globalmsg2

bossbar set minecraft:fnfhp players @a
bossbar set minecraft:fnfhp visible false
bossbar set minecraft:gianthp players @a
bossbar set minecraft:gianthp visible false
bossbar set minecraft:amogbar players @a
bossbar set minecraft:amogbar visible false
bossbar set minecraft:noisebar players @a
bossbar set minecraft:noisebar visible false
bossbar set minecraft:sprintbar players @a
bossbar set minecraft:sprintbar visible false
bossbar set minecraft:trollgebar players @a
bossbar set minecraft:trollgebar visible false


# ACT 1

execute if score @s act matches 1 run function ttt:reset/act1_literal
execute if score @s act matches 1 if score @s actpart matches ..2 run function ttt:reset/act1_visual


# ACT 1 & 2

execute if score @s act matches 1..2 run function ttt:reset/overworld


# ACT 2

execute if score @s act matches 2 run function ttt:reset/act2_literal
execute if score @s act matches 1 if score @s actpart matches 3.. run function ttt:reset/act2_visual
execute if score @s act matches 2 run function ttt:reset/act2_visual


# ACT 3
# Most stuff is reset in act3/spawn_hell_ents.mcfunction

execute if score @s act matches 3 run function ttt:reset/act3_literal
