scoreboard players set @s dialogueseq 3
scoreboard players set @s dialoguetime 0

execute as @e[type=armor_stand,tag=sansroom] at @s run function ttt:act3/sansroom_despawn
function ttt:act3/rain_start