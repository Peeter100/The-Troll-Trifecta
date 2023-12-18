playsound minecraft:block.fire.extinguish master @a ~ ~ ~
particle cloud ~ ~ ~ .4 .2 .4 0 30 force @a

stopsound @a master custom.t2s.waltuh.my_name_is
execute as @e[tag=walterhead,tag=!gencomment] at @s run playsound custom.t2s.waltuh.generator master @a ~ ~ ~ 1000
execute as @e[tag=walterhead,tag=!gencomment] at @s run tellraw @a [{"text":"<","color":"white"},{"text":"Walter White","color":"#FFA159"},{"text":"> "},{"text":"What are you doing to my water generator?","color":"#FFA159"}]
tag @e[tag=walterhead] add gencomment

execute if entity @e[tag=casted] unless entity @s[nbt={Item:{tag:{good:1b}}}] run function ttt:act3/rain_mix_bad
execute if entity @e[tag=casted,nbt=!{Item:{tag:{good:1b}}}] if entity @s[nbt={Item:{tag:{good:1b}}}] run function ttt:act3/rain_mix_bad

tag @s add casted
execute if entity @e[tag=casted,nbt={Item:{tag:{seed:1b}}}] if entity @e[tag=casted,nbt={Item:{tag:{fern:1b}}}] if entity @e[tag=casted,nbt={Item:{tag:{sunflower:1b}}}] run function ttt:act3/rain_mix_regular