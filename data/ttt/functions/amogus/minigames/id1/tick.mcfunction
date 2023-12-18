##	score1 --> noise bar
##	score2 --> sprint bar
##	score3 --> decrementing timer
##		if 0 monster teleports depending on noise level
##		running & jumping decrements really fast
##	score4 --> chase timer
##		static 0.2
##		footstep 0.1
##	score5 --> ambient footstep (0.85) + lights (1.7)
##	score6 --> vignette adjust
##	score7 --> rage timer

##	gametimer
##	0 -> not chase
##	1 - xx -> found you shit
##	xx+ --> chase

scoreboard players set @a[tag=amplayer,scores={sprinting=1..,sneak=1..}] sprinting 0
execute as @e[type=item,tag=artifact] at @s if entity @a[tag=amplayer,distance=0..4] run data merge entity @s {Glowing:1b}
execute as @e[type=item,tag=artifact] at @s unless entity @a[tag=amplayer,distance=0..4] run data merge entity @s {Glowing:0b}
# tp @e[tag=trollgevis] @e[tag=trollgeai,limit=1]

scoreboard players add @s am_gamescore5 1
execute if entity @s[scores={am_gamescore5=1}] run stopsound @a master custom.act3.backroom.lights
execute if entity @s[scores={am_gamescore5=1}] as @p[tag=amplayer] at @s run playsound custom.act3.backroom.lights master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gamescore5=34..}] run scoreboard players set @s am_gamescore5 0

scoreboard players add @s[scores={am_gamescore6=..49}] am_gamescore6 1
execute at @p[tag=amplayer] unless entity @e[tag=trollgevis,distance=0..28] run scoreboard players remove @s[scores={am_gamescore6=10..19}] am_gamescore6 2
execute at @p[tag=amplayer] unless entity @e[tag=trollgevis,distance=0..21] run scoreboard players remove @s[scores={am_gamescore6=20..29}] am_gamescore6 2
execute at @p[tag=amplayer] unless entity @e[tag=trollgevis,distance=0..15] run scoreboard players remove @s[scores={am_gamescore6=30..39}] am_gamescore6 2
execute at @p[tag=amplayer] unless entity @e[tag=trollgevis,distance=0..8] run scoreboard players remove @s[scores={am_gamescore6=40..}] am_gamescore6 2

execute if entity @s[scores={am_gamescore6=39..}] run worldborder warning distance 900000000
execute if entity @s[scores={am_gamescore6=31..38}] run worldborder warning distance 700000000
execute if entity @s[scores={am_gamescore6=24..30}] run worldborder warning distance 450000000
execute if entity @s[scores={am_gamescore6=18..23}] run worldborder warning distance 300000000
execute if entity @s[scores={am_gamescore6=12..17}] run worldborder warning distance 100000000
execute if entity @s[scores={am_gamescore6=0..11}] run worldborder warning distance 80000000

execute if entity @s[scores={am_gamescore2=41..}] if entity @a[tag=amplayer,scores={sprinting=0},nbt={OnGround:1b}] run scoreboard players add @s[scores={am_gamescore2=..399}] am_gamescore2 1
execute if entity @s[scores={am_gamescore2=..40}] if entity @a[tag=amplayer,scores={sprinting=0,walking=0},nbt={OnGround:1b}] run scoreboard players add @s am_gamescore2 1
execute if entity @a[tag=amplayer,scores={sprinting=1..}] run scoreboard players remove @s am_gamescore2 2
execute if entity @a[tag=amplayer,scores={jump=1..}] run scoreboard players remove @s am_gamescore2 110
effect give @a[tag=amplayer,scores={sprinting=1..}] speed 1 1 true
effect clear @a[tag=amplayer,scores={sprinting=0},nbt={OnGround:1b,ActiveEffects:[{Id:1b,Amplifier:1b,Duration:17}]}] speed
execute if entity @s[scores={am_gamescore2=..-1}] run scoreboard players set @s am_gamescore2 0
execute if entity @s[scores={am_gamescore2=41..}] run effect give @a[tag=amplayer,scores={food=..7}] saturation 1 0 true
execute if entity @s[scores={am_gamescore2=..40}] run effect give @a[tag=amplayer,scores={food=4..}] hunger 1 255 true
effect clear @a[tag=amplayer,scores={food=3}] hunger
effect give @a[tag=amplayer,scores={food=..2}] saturation 1 0 true
execute store result bossbar minecraft:sprintbar value run scoreboard players get @s am_gamescore2
execute if entity @s[scores={am_gamescore2=..399}] run bossbar set minecraft:sprintbar visible true
execute if entity @s[scores={am_gamescore2=400}] run bossbar set minecraft:sprintbar visible false
execute if entity @s[scores={am_gamescore2=41..}] run bossbar set minecraft:sprintbar color blue
execute if entity @s[scores={am_gamescore2=41..}] run bossbar set minecraft:sprintbar name {"text":"Stamina","color":"aqua"}
execute if entity @s[scores={am_gamescore2=..40}] run bossbar set minecraft:sprintbar color white
execute if entity @s[scores={am_gamescore2=..40}] run bossbar set minecraft:sprintbar name {"text":"Stamina","color":"gray"}

scoreboard players remove @s am_gamescore1 5
execute if entity @s[scores={am_gamescore1=..-1}] run scoreboard players set @s am_gamescore1 0
execute if entity @a[tag=amplayer,scores={walking=5..}] run scoreboard players set @s[scores={am_gamescore1=..4}] am_gamescore1 15
execute if entity @a[tag=amplayer,scores={jump=1..}] run scoreboard players set @s[scores={am_gamescore1=..49}] am_gamescore1 60
execute if entity @a[tag=amplayer,scores={sprinting=2..}] run scoreboard players set @s[scores={am_gamescore1=..69}] am_gamescore1 80
execute if entity @s[scores={am_gamescore1=0..39}] run bossbar set minecraft:noisebar color green
execute if entity @s[scores={am_gamescore1=0..39}] run bossbar set minecraft:noisebar name {"text":"Noise","color":"green"}
execute if entity @s[scores={am_gamescore1=40..64}] run bossbar set minecraft:noisebar color yellow
execute if entity @s[scores={am_gamescore1=40..64}] run bossbar set minecraft:noisebar name {"text":"Noise","color":"yellow"}
execute if entity @s[scores={am_gamescore1=65..}] run bossbar set minecraft:noisebar color red
execute if entity @s[scores={am_gamescore1=65..}] run bossbar set minecraft:noisebar name {"text":"Noise","color":"red"}
execute store result bossbar minecraft:noisebar value run scoreboard players get @s am_gamescore1

scoreboard players set @s am_visualizer 0
execute if entity @a[tag=amplayer,nbt={Inventory:[{tag:{artifact:1b}}]}] run scoreboard players add @s am_visualizer 1
execute if entity @a[tag=amplayer,nbt={Inventory:[{tag:{artifact:2b}}]}] run scoreboard players add @s am_visualizer 1
execute if entity @a[tag=amplayer,nbt={Inventory:[{tag:{artifact:3b}}]}] run scoreboard players add @s am_visualizer 1
execute if entity @s[scores={am_visualizer=3}] run function ttt:amogus/minigames/id1/find_all

execute if entity @s[scores={am_gametimer=10}] run function ttt:amogus/minigames/id1/tick_idle
execute if entity @s[scores={am_gametimer=11..9999}] run function ttt:amogus/minigames/id1/tick_chasing

scoreboard players set @a walking 0
scoreboard players set @a sprinting 0
scoreboard players set @a sneak 0