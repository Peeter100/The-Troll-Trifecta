scoreboard players reset * xmas_gifts
scoreboard players set @a[team=p] xmas_gifts 0
scoreboard objectives setdisplay sidebar xmas_gifts
scoreboard players set @s xmas_hasblaster 0
scoreboard players set @s xmas_hasjolly 0

schedule function ttt:xmas/giftcheck_schedule 100t replace
give @a[team=p,scores={hp=1..}] ender_eye{display:{Name:'{"text":"Christmas Gift","color":"yellow","italic":false}',Lore:['{"text":"What\'s inside?","color":"gray","italic":false}','{"text":"Only one way to find out!","color":"gray","italic":false}','{"text":" "}','{"text":"Right-click to open.","color":"gray","italic":false}','[{"text":"Has a global ","color":"gray"},{"text":"2s","color":"yellow"},{"text":" cooldown."}]']},CustomModelData:1,gift:1b} 12
execute as @a at @s run playsound custom.xmas.santa_laugh master @s ~ ~ ~ 1000 2
tellraw @a [{"text":"Christmas Chaos\n","color":"yellow","bold":true,"underlined":true},{"text":"Complete the Act while opening as many presents as possible!","color":"#F2FFB3","bold":false,"underlined":false}]