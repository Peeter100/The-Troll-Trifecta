tp @s -20 21 94 180 0
item replace entity @s weapon.mainhand with chain{CustomModelData:3}
scoreboard players set @s npcbodytp 0
execute if score @e[type=marker,tag=sv,limit=1] am_gamescore1 matches 300.. run scoreboard players set @s npcbodytp 350
tag @e[type=marker,tag=fnafhost,limit=1] remove banlinux