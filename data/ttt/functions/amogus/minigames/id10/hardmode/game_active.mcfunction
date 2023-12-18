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


execute if block -26 22 98 lever[powered=true] unless entity @e[type=marker,tag=fnafhost,tag=bonniedoor] run function ttt:amogus/minigames/id10/bonniedoor_close
execute if block -26 22 98 lever[powered=false] if entity @e[type=marker,tag=fnafhost,tag=bonniedoor] run function ttt:amogus/minigames/id10/bonniedoor_open
execute if block -22 22 98 lever[powered=true] unless entity @e[type=marker,tag=fnafhost,tag=chicadoor] run function ttt:amogus/minigames/id10/chicadoor_close
execute if block -22 22 98 lever[powered=false] if entity @e[type=marker,tag=fnafhost,tag=chicadoor] run function ttt:amogus/minigames/id10/chicadoor_open
## execute if block -24 22 100 lever[powered=true] unless entity @e[type=marker,tag=fnafhost,tag=foxylights] run function ttt:amogus/minigames/id10/foxylights_on
execute if block -24 22 100 lever[powered=true] run function ttt:amogus/minigames/id10/foxylights_tick
execute if block -24 22 100 lever[powered=false] if entity @e[type=marker,tag=fnafhost,tag=foxylights] run function ttt:amogus/minigames/id10/foxylights_off

execute if block -22 22 98 lever[powered=true] run scoreboard players add @s am_gamescore6 1
## execute if block -24 22 100 lever[powered=true] run scoreboard players add @s am_gamescore6 1
execute if block -26 22 98 lever[powered=true] run scoreboard players add @s am_gamescore6 1
execute if entity @s[scores={am_gamescore6=27..}] run scoreboard players remove @s am_gamescore2 1
execute if entity @s[scores={am_gamescore6=27..}] run scoreboard players remove @s am_gamescore6 27

execute if entity @s[scores={am_gametimer=2000}] run function ttt:amogus/minigames/id10/hardmode/move

scoreboard players add @e[type=armor_stand,tag=foxy,limit=1] npcbodytp 2
scoreboard players operation @s am_gamescore3 = @e[type=armor_stand,tag=foxy,limit=1] npcbodytp
scoreboard players operation @s am_gamescore3 /= @e[type=marker,tag=fnafhost,limit=1] npcbodytp
execute unless score @s am_gamescore3 = @s am_gamescore7 run function ttt:amogus/minigames/id10/move_foxy

scoreboard players add @e[type=armor_stand,tag=freddy,scores={npcbodytp=..1999},limit=1] npcbodytp 2
execute as @e[type=armor_stand,tag=freddy,limit=1] at @s if score @s npcbodytp matches 1800..1999 run function ttt:amogus/minigames/id10/move_freddy

scoreboard players remove @e[type=armor_stand,tag=fazbearregular,scores={npcbodytp=2000..}] npcbodytp 1

execute if entity @e[type=marker,tag=fnafhost,tag=bonniedoor] run scoreboard players add @e[type=armor_stand,tag=bonnie,scores={npcbodytp=2000..}] npcbodytp 2
execute if entity @e[type=marker,tag=fnafhost,tag=chicadoor] run scoreboard players add @e[type=armor_stand,tag=chica,scores={npcbodytp=2000..}] npcbodytp 2
execute as @e[type=armor_stand,tag=fazbear,tag=stage1,scores={npcbodytp=2210..}] at @s run function ttt:amogus/minigames/id10/move_back

execute as @e[type=armor_stand,tag=fazbearregular,scores={npcbodytp=2000}] at @s run function ttt:amogus/minigames/id10/fazbearregular_timeout

title @a actionbar [{"text":"Power left: ","color":"white","italic":false},{"score":{"name":"@s","objective":"am_gamescore2"}},{"text":"%, "},{"score":{"name":"@s","objective":"am_gamescore1"},"color":"green"},{"text":"/125 Commands","color":"green"}]

execute if score @s am_gamescore2 matches ..0 run function ttt:amogus/minigames/id10/disable_fnaf_powerout
execute if score @s am_gamescore1 matches 125.. if score @s am_gamescore2 matches 1.. run function ttt:amogus/minigames/id10/linux_complete

scoreboard players remove @s[scores={am_gamescore5=1..}] am_gamescore5 1
execute if entity @s[scores={am_gamescore5=1}] run tp @e[type=chest_minecart,tag=linux] -24 22 97.55 90 0