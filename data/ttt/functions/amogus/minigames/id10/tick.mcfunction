# am_gamescore1 == installation progress (400)
# am_gamescore2 == power
# am_gamescore3 == current foxy pos

# RESERVED FOR fazbear TAGGED ARMOR STANDS
# >1000 == attack countdown
# am_gamescore4 == bonnie phase
# am_gamescore5 == chica phase
# am_gamescore6 == foxy phase
# am_gamescore7 == freddy phase

# am_gamescore4 == value for determining rng
# am_gamescore5 == linux cooldown
# am_gamescore6 == power consumption
# am_gamescore7 == in-memory foxy pos

# fnafhost marker entity hosts move speed for foxy (npcbodytp)


scoreboard players add @s[scores={am_gametimer=..1998}] am_gametimer 1
scoreboard players remove @s[scores={am_gametimer=2001..}] am_gametimer 1
execute if entity @s[scores={am_gametimer=100}] at @p[tag=amplayer] run playsound custom.act3.fnaf.ring master @a ~ ~ ~ 1000
execute if entity @s[scores={am_gametimer=100}] run scoreboard players set @s am_gametimer 11
execute if entity @s[scores={am_gametimer=11..100}] unless entity @a[tag=amplayer,scores={Game_Choice=0}] run function ttt:amogus/minigames/id10/choice

execute if score @s am_gametimer matches 2000.. if entity @e[type=marker,tag=fnafhost,tag=hardmode] run function ttt:amogus/minigames/id10/hardmode/game_active
execute if score @s am_gametimer matches 2000.. unless entity @e[type=marker,tag=fnafhost,tag=hardmode] run function ttt:amogus/minigames/id10/game_active
execute if score @s am_gametimer matches 101..999 run function ttt:amogus/minigames/id10/tutorial
execute if score @s am_gametimer matches 1000..1999 run function ttt:amogus/minigames/id10/tick_alt

execute unless entity @e[type=chest_minecart,tag=linux,nbt={Items:[{Slot:0b,tag:{req:1b}},{Slot:1b,tag:{req:1b}},{Slot:2b,tag:{req:1b}},{Slot:3b,tag:{req:1b}},{Slot:4b,tag:{req:1b}},{Slot:5b,tag:{req:1b}},{Slot:6b,tag:{req:1b}},{Slot:7b,tag:{req:1b}},{Slot:8b,tag:{req:1b}},{Slot:9b,tag:{req:1b}},{Slot:10b,tag:{req:1b}},{Slot:11b,tag:{req:1b}},{Slot:12b,tag:{req:1b}},{Slot:13b,tag:{req:1b}},{Slot:14b,tag:{req:1b}},{Slot:15b,tag:{req:1b}},{Slot:16b,tag:{req:1b}},{Slot:17b,tag:{req:1b}},{Slot:18b,tag:{req:1b}},{Slot:19b,tag:{req:1b}},{Slot:20b,tag:{req:1b}},{Slot:21b,tag:{req:1b}},{Slot:22b,tag:{req:1b}},{Slot:23b,tag:{req:1b}},{Slot:24b,tag:{req:1b}},{Slot:25b,tag:{req:1b}},{Slot:26b,tag:{req:1b}}]}] run function ttt:amogus/minigames/id10/linux_process

execute if score @s am_gametimer matches ..999 run title @a actionbar [{"text":"Power left: 100%, ","color":"white","italic":false},{"text":"0/400 Commands","color":"green"}]