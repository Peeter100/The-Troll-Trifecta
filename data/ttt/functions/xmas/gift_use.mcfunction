scoreboard players add @s xmas_gifts 1
clear @s ender_eye{gift:1b} 1
tag @s add needsgift

playsound block.note_block.pling master @a ~ ~ ~ 1 2
playsound entity.firework_rocket.launch master @a ~ ~ ~ 1
particle firework ~ ~1 ~ .2 .5 .2 .01 50 force @a

#execute if predicate ttt:25ch run function ttt:xmas/rewards/items/base
#execute unless entity @s[tag=rewarddone] if predicate ttt:25ch run function ttt:xmas/rewards/mobs/base
#execute unless entity @s[tag=rewarddone] if predicate ttt:25ch run function ttt:xmas/rewards/potions/base
#execute unless entity @s[tag=rewarddone] run function ttt:xmas/rewards/other/base
#tag @s remove rewarddone

loot spawn ~ ~ ~ loot ttt:xmas/drop_generic
function ttt:xmas/rewards/parse_rewards_schedule

# In case forge spawns this a tick later or some shit
schedule function ttt:xmas/rewards/parse_rewards_schedule 2t replace

tag @e[type=marker,tag=sv,limit=1] add giftlimit
schedule function ttt:xmas/enable_gifts 40t replace