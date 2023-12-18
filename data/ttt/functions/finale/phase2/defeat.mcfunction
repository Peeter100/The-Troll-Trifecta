scoreboard players set @s dialogueseq 4
scoreboard players set @s dialoguetime 0

effect clear @a speed
effect clear @a jump_boost
effect give @a instant_health 1 100 true
effect give @a resistance 3 255 true

schedule clear ttt:finale/phase2/switchdir_p100
schedule clear ttt:finale/phase2/switchdir_trollge

kill @e[tag=bossmob]
kill @e[type=vex]
kill @e[type=small_fireball]
kill @e[type=arrow]
kill @e[type=item]
kill 00000005-0000-0000-0000-000000000000