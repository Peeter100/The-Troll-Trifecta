scoreboard players remove @s am_sabcool 1
execute unless entity @s[scores={am_killcool=1..}] run function ttt:amogus/bossbar_update_name
execute if entity @s[scores={am_sabcool=0,am_ventid=0,am_sabid=0}] run function ttt:amogus/slot_enable_sabotages