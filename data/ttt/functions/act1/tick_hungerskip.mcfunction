# If hunger is skipped (already completed)
# Activated next sequence after death (similar to rickseq)

execute as @r[team=p,scores={z=74..}] if block -2 31 92 barrier run function ttt:act1/villinteract/alt/spawn_villagers
execute as @a[team=p,tag=!hungertext] at @s if block ~ ~-1 ~ stripped_acacia_log run function ttt:act1/villinteract/alt/hunger_text

execute as @a[team=p,scores={villinteract=1..}] at @s run function ttt:act1/villinteract/alt/villinteract

execute if entity @s[scores={dialogueseq=..1,fnf_seentails=1}] if entity @a[team=p,scores={x=-6..0,y=28..33,z=99..105}] at @e[type=armor_stand,tag=tailshead] run function ttt:act1/dialogueseq2
#execute if entity @s[scores={dialogueseq=..1,fnf_seentails=3..4}] as @a[team=p,tag=!tailstext,scores={x=-10..-7,y=30..32,z=101..104}] run function ttt:act1/tails_text
execute if entity @s[scores={dialogueseq=..1,fnf_seentails=3..4}] if entity @a[team=p,scores={x=-10..-7,y=30..32,z=101..104}] unless entity @e[type=armor_stand,tag=nowalkup] run function ttt:act1/dialogueseq3_nofall
execute if entity @s[scores={dialogueseq=..1,fnf_seentails=5..}] if entity @a[team=p,scores={z=101..}] unless entity @e[type=armor_stand,tag=nowalkup] run function ttt:act1/dialogueseq3_nofall