tag @a[team=p] add clashplayer
scoreboard players reset @a Game_Choice
execute if entity @s[scores={act=1}] run function ttt:switch_to_act2
scoreboard players set @s actpart 2
scoreboard players set @s acttimer 1
scoreboard players set @s dialoguetime 0
function ttt:act2/reset_cr_values
setblock -18 32 79 air destroy
execute as @e[tag=sanshead] at @s run playsound custom.act1.undertale master @a ~ ~ ~ 1000
scoreboard players set @s[scores={cr_beeninbattle=0}] cr_beeninbattle 1

# tag @r[team=p,nbt={Inventory:[{tag:{flamebow:1b}}]}] add hadbow
# execute unless entity @a[tag=hadbow] run tag @r[team=p] add hadbow  [!] RUN WHEN ENDING CLASH INSTEAD
kill @e[type=tnt]
kill @e[tag=forkill,tag=!sans]
tag @a remove importantsans
tag @a remove importantund
tag @a remove undynequal