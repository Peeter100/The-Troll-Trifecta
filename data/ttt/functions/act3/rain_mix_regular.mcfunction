stopsound @a master custom.t2s.trollge.step2
execute if entity @e[tag=sv,scores={am_seentrollge=0}] run tellraw @a [{"text":"<","color":"dark_gray"},{"text":"TROLLGE","color":"#942626","font":"trollge"},{"text":"> "},{"text":"STEP 3 - COVER YOURSELF IN OIL","color":"#942626","font":"trollge"}]
execute if entity @e[tag=sv,scores={am_seentrollge=0}] run playsound custom.t2s.trollge.step3 master @a ~ ~ ~ 1000

execute if entity @e[tag=sv,scores={am_seentrollge=0}] run fill -19 26 216 -19 26 218 barrier
scoreboard players set @e[tag=sv] dialogueseq 3
scoreboard players set @e[tag=sv] dialoguetime 610
give @p[scores={y=24..27},team=p] potion{display:{Name:'{"text":"Bottle of Oil","color":"yellow","italic":false}'},HideFlags:98,oilpotion:1b,goodr:1b,CustomPotionColor:12564736} 1
kill @e[type=item,tag=casted]