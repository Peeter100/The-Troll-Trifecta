execute if entity @e[type=villager,tag=amogai,tag=noticedmurder] run function ttt:amogus/emergencymeeting/argument_murder_direct_witness
execute if entity @e[type=villager,tag=amogai,tag=noticedventing] unless entity @e[type=villager,tag=amogai,tag=noticedmurder] run function ttt:amogus/emergencymeeting/argument_venting
execute unless entity @e[type=villager,tag=amogai,tag=noticedventing] unless entity @e[type=villager,tag=amogai,tag=noticedmurder] run function ttt:amogus/emergencymeeting/argument_tasks