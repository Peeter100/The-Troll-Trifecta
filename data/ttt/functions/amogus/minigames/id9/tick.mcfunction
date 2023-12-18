# am_gamescore1 == blaster timer
# am_gamescore2 == fire timer
# am_gamescore3 == has reset?

effect give @a[scores={food=..7}] saturation 1 0 true
scoreboard players add @s[scores={am_gametimer=..9998}] am_gametimer 1

execute if entity @s[scores={am_gametimer=11}] as @r[tag=amplayer] at @s run playsound custom.act3.mrbeast master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=11}] run tellraw @a {"text":"*MrBeast summon chant*","color":"#006AC7"}
execute if entity @s[scores={am_gametimer=64}] run give @a[tag=amplayer] stick{display:{Name:'{"text":"Hold-Trigger Hover Wand","color":"light_purple","italic":false}',Lore:['{"text":"While holding this wand, you will not be affected","color":"gray","italic":false}','[{"text":"by ","color":"gray","italic":false},{"text":"gravity","color":"yellow"},{"text":" as long as you have enough "},{"text":"energy","color":"light_purple"},{"text":"."}]','{"text":"Energy can be restored by standing","color":"gray","italic":false}','[{"text":"on the ground while ","color":"gray","italic":false},{"text":"NOT","color":"red"},{"text":" holding the wand."}]','{"text":" "}','{"text":"TIP: Switch to the wand immediately after","color":"red","italic":false}','{"text":"jumping to jump slightly higher!","color":"red","italic":false}']},HideFlags:3,CustomModelData:1,hoverwand:1b,Enchantments:[{}]}
execute if entity @s[scores={am_gametimer=64}] as @r[tag=amplayer] at @s run playsound custom.t2s.mrbeast.intro master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=64}] run tellraw @a [{"text":"<","color":"white"},{"text":"MrBeast","color":"#006AC7"},{"text":"> "},{"text":"If you complete this parkour in one piece, I will give you $10000!","color":"#006AC7"}]
execute if entity @s[scores={am_gametimer=130}] run tellraw @a [{"text":""},{"text":"Current Task:\n","color":"yellow","bold":"true"},{"text":"Win $10000 for The King!","color":"light_purple"},{"text":"\nJumping & Sprinting: ","color":"yellow","italic":"true"},{"text":"Enabled","color":"green","italic":"true"}]
execute if entity @s[scores={am_gametimer=130}] as @r[tag=amplayer] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1000

execute if entity @s[scores={am_gamescore3=0}] if entity @a[tag=amplayer,scores={x=..-73,y=27..}] run fill -114 30 86 -114 33 93 barrier
execute if entity @s[scores={am_gamescore3=0}] if entity @a[tag=amplayer,scores={x=..-73,y=27..}] run scoreboard players set @s am_gamescore3 1

execute if entity @a[tag=amplayer,scores={x=-75..-58,y=19..30,z=75..84}] run scoreboard players add @s am_gamescore1 1
execute if entity @s[scores={am_gamescore1=30..}] run function ttt:amogus/minigames/id9/timed_blaster

execute if entity @a[tag=amplayer,scores={x=..-95}] run scoreboard players add @s am_gamescore2 1
execute if entity @s[scores={am_gamescore2=5}] positioned -114 30 93 if block ~ ~1 ~ fire run setblock ~ ~ ~ air destroy
execute if entity @s[scores={am_gamescore2=9}] positioned -114 30 86 if block ~ ~1 ~ fire run setblock ~ ~ ~ air destroy
execute if entity @s[scores={am_gamescore2=13}] positioned -114 30 88 if block ~ ~1 ~ fire run setblock ~ ~ ~ air destroy
execute if entity @s[scores={am_gamescore2=18}] positioned -114 30 87 if block ~ ~1 ~ fire run setblock ~ ~ ~ air destroy
execute if entity @s[scores={am_gamescore2=23}] positioned -114 30 92 if block ~ ~1 ~ fire run setblock ~ ~ ~ air destroy
execute if entity @s[scores={am_gamescore2=26}] positioned -114 30 90 if block ~ ~1 ~ fire run setblock ~ ~ ~ air destroy
execute if entity @s[scores={am_gamescore2=32}] positioned -114 30 91 if block ~ ~1 ~ fire run setblock ~ ~ ~ air destroy
execute if entity @s[scores={am_gamescore2=38}] positioned -114 30 89 if block ~ ~1 ~ fire run setblock ~ ~ ~ air destroy
execute if entity @s[scores={am_gamescore2=40..}] run scoreboard players set @s am_gamescore2 0

execute as @a[tag=amplayer,scores={x=-115..-113,y=30..,z=86..93}] at @s if block -114 33 ~ barrier run function ttt:amogus/minigames/id9/blockade
execute if entity @s[scores={am_gametimer=64..}] as @a[tag=amplayer,scores={hp=..19}] at @s run function ttt:amogus/minigames/id9/death_one_piece

execute as @a[tag=amplayer] at @s if block ~ ~ ~ #ttt:passable[waterlogged=true] run function ttt:amogus/minigames/id9/death_water
execute as @a[tag=amplayer] at @s if block ~ ~ ~ water run function ttt:amogus/minigames/id9/death_water

execute if entity @a[tag=amplayer,scores={x=-121,y=29..32,z=86..93}] run function ttt:amogus/minigames/id9/task_complete

execute as @a[tag=amplayer,nbt={OnGround:1b},nbt=!{SelectedItem:{tag:{hoverwand:1b}}}] at @s run scoreboard players set @s wand_energy 100
execute as @a[tag=amplayer,nbt={SelectedItem:{tag:{hoverwand:1b}}},scores={wand_energy=1..}] at @s run scoreboard players remove @s wand_energy 2
execute as @a[tag=amplayer,nbt={SelectedItem:{tag:{hoverwand:1b}}},scores={wand_energy=1..}] at @s run effect give @s levitation 1 255 true
execute as @a[tag=amplayer,scores={wand_energy=..0}] at @s run effect clear @s levitation
execute as @a[tag=amplayer,nbt=!{SelectedItem:{tag:{hoverwand:1b}}}] at @s run effect clear @s levitation
execute as @a[tag=amplayer,nbt={Inventory:[{tag:{hoverwand:1b}}]}] at @s run title @s actionbar [{"text":"Wand Energy: ","color":"light_purple","italic":false},{"score":{"name":"@s","objective":"wand_energy"},"color":"dark_purple"},{"text":"%","color":"dark_purple"}]