playsound entity.enderman.teleport master @a ~ ~ ~ 1
particle dust 0.6 1 0.6 1 ~ ~1 ~ .2 .5 .2 0 50 force @a
particle cloud ~ ~1 ~ .2 .5 .2 0.1 10 force @a
tp @s -30.0 14 192.0 125 -15
playsound entity.enderman.teleport master @a -30.0 14 192.0 1
particle dust 0.6 1 0.6 1 -30.0 15 192.0 .2 .5 .2 0 50 force @a
particle cloud -30.0 15 192.0 .2 .5 .2 0.1 10 force @a
execute unless entity @s[nbt={Inventory:[{tag:{ring:1b}}]}] run give @s carrot_on_a_stick{display:{Name:'{"text":"Sonic\'s Secret Ring","color":"yellow","italic":false}',Lore:['{"text":"Spam right-click to dash","color":"gray","italic":false}','[{"text":"forward using a ","color":"gray","italic":false},{"text":"spindash","color":"aqua"},{"text":"."}]','{"text":"Action can only be performed","color":"gray","italic":false}','{"text":"while standing on the ground.","color":"gray","italic":false}']},CustomModelData:9,ring:1b}