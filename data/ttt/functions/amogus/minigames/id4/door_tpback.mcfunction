stopsound @a master custom.t2s.baldi.vase_instructions
stopsound @a master custom.t2s.baldi.vase_forget
execute as @a[tag=amplayer] at @s run playsound custom.t2s.baldi.vase_forget master @a ~ ~ ~ 1000
execute as @a[tag=amplayer] at @s run playsound custom.act1.ben.no master @a ~ ~ ~ 1000
## tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"Use right-click with the glove selected to pickup the vase!","color":"green"}]
tellraw @a [{"text":"<","color":"white"},{"text":"Baldi","color":"green"},{"text":"> "},{"text":"Take the vase with you by using right-click with the glove selected!","color":"green"}]
tp @a[tag=amplayer] 29 21 137 -180 25