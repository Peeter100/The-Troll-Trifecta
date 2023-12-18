summon tnt ~ ~ ~ {Fuse:22,Motion:[0.0,0.1,0.0],Tags:["faketnt","forkill"]}
scoreboard players set @e[type=marker,tag=sv] acttimer 1
scoreboard players set @e[type=marker,tag=sv,scores={dialogueseq=..-1}] dialogueseq 1
kill @s