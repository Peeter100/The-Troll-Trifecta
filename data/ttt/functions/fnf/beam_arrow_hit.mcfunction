tag @s add foundarrow
execute as @e[type=marker,tag=sv] if entity @s[scores={fnf_dd=1..}] run function ttt:fnf/beam_dodgeafter
execute as @e[type=marker,tag=sv] if entity @s[scores={fnf_dd=0}] run scoreboard players set @s fnf_dd 102