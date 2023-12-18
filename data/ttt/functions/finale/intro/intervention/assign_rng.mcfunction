# 1.18 moment
# Wish was making this on 1.20.2 so I could use /random

scoreboard players set @e[type=armor_stand,tag=watcherhead] npcbodytp -1
scoreboard players set @e[type=armor_stand,tag=watcherhead,scores={npcbodytp=-1},limit=2,sort=random] npcbodytp 1
scoreboard players set @e[type=armor_stand,tag=watcherhead,scores={npcbodytp=-1},limit=2,sort=random] npcbodytp 2
scoreboard players set @e[type=armor_stand,tag=watcherhead,scores={npcbodytp=-1},limit=2,sort=random] npcbodytp 3
scoreboard players set @e[type=armor_stand,tag=watcherhead,scores={npcbodytp=-1},limit=2,sort=random] npcbodytp 4
scoreboard players set @e[type=armor_stand,tag=watcherhead,scores={npcbodytp=-1},limit=2,sort=random] npcbodytp 5
scoreboard players set @e[type=armor_stand,tag=watcherhead,scores={npcbodytp=-1},limit=2,sort=random] npcbodytp 6
scoreboard players set @e[type=armor_stand,tag=watcherhead,scores={npcbodytp=-1}] npcbodytp 0