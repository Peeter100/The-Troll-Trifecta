playsound custom.act1.xina.question master @s ~ ~ ~ 1000
execute if entity @s[tag=hungertext] run title @s actionbar {"text":"You aren't hungry!","color":"green"}
execute unless entity @s[tag=hungertext] run function ttt:act1/villinteract/alt/hunger_text