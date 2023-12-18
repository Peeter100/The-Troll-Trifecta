execute if entity @s[scores={fnf_dd=..99}] run scoreboard players set @s fnf_dd 6
execute if entity @s[scores={fnf_dd=100..}] run function ttt:fnf/beam_dodgeafter
tp @a[tag=fnfplayer] -3 29.06250 144 180 0