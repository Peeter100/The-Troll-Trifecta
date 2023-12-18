# Run as server, at diamond ore block

playsound entity.player.levelup master @a ~ ~ ~ 1000
particle minecraft:happy_villager ~ ~.5 ~ .3 .3 .3 0 20 normal @a

scoreboard players set @s d5 1
advancement grant @a only ttt:ore ore5

scoreboard players operation @s dseq = @s d1
scoreboard players operation @s dseq += @s d2
scoreboard players operation @s dseq += @s d3
scoreboard players operation @s dseq += @s d4
scoreboard players operation @s dseq += @s d5
scoreboard players operation @s dseq += @s d6
tellraw @a [{"text":"ORE SCAVENGER","color":"aqua","bold":true},{"text":" >> Found ","bold":false},{"score":{"name":"@s","objective":"dseq"},"color":"yellow","bold":false},{"text":"/6 ","color":"yellow","bold":false},{"text":"secret diamond ores!","bold":false}]
execute if entity @s[scores={dseq=2}] run schedule function ttt:diamond_hunt/update1 20t replace
execute if entity @s[scores={dseq=4}] run schedule function ttt:diamond_hunt/update2 20t replace
execute if entity @s[scores={dseq=6}] run function ttt:diamond_hunt/all

# act 1
tellraw @a [{"text":"- Act 1: ","color":"yellow"},{"score":{"name":"@s","objective":"d1"}},{"text":"/1"}]

# act 2
scoreboard players operation @s dseq = @s d2
scoreboard players operation @s dseq += @s d3
tellraw @a [{"text":"- Act 2: ","color":"yellow"},{"score":{"name":"@s","objective":"dseq"}},{"text":"/2"}]

# act 3
scoreboard players operation @s dseq = @s d4
scoreboard players operation @s dseq += @s d5
scoreboard players operation @s dseq += @s d6
tellraw @a [{"text":"- Act 3: ","color":"yellow"},{"score":{"name":"@s","objective":"dseq"}},{"text":"/3"}]