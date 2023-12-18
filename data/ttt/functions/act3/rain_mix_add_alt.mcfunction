playsound minecraft:block.fire.extinguish master @a ~ ~ ~
particle cloud ~ ~ ~ .4 .2 .4 0 30 force @a

execute if entity @e[tag=casted] unless entity @s[nbt={Item:{tag:{goodr:1b}}}] run function ttt:act3/rain_mix_bad
execute if entity @e[tag=casted,nbt=!{Item:{tag:{goodr:1b}}}] if entity @s[nbt={Item:{tag:{goodr:1b}}}] run function ttt:act3/rain_mix_bad

tag @s add casted
execute if entity @e[tag=casted,nbt={Item:{tag:{gunpowder:1b}}}] if entity @e[tag=casted,nbt={Item:{tag:{oilpotion:1b}}}] run function ttt:act3/rain_mix_splash