execute if entity @s[scores={cr_hogspawned=0,acttimer=1026}] if predicate ttt:15ch run function ttt:clash/spawn_hog
execute if entity @s[scores={cr_gobspawned=..8,acttimer=1026}] run function ttt:clash/spawn_goblin
execute if entity @s[scores={cr_barspawned=..3,acttimer=1027}] run function ttt:clash/spawn_barbarian
execute if entity @s[scores={cr_witspawned=0,acttimer=1028}] if predicate ttt:15ch run function ttt:clash/spawn_witch

execute if entity @s[scores={acttimer=1025}] run data merge entity @e[type=armor_stand,tag=giantvis1,limit=1] {Pose:{RightArm:[0F,0F,0F],LeftArm:[0F,0F,0F]}}
execute if entity @s[scores={acttimer=1027}] run data merge entity @e[type=armor_stand,tag=giantvis1,limit=1] {Pose:{RightArm:[2F,0F,0F],LeftArm:[-2F,0F,0F]}}
execute if entity @s[scores={acttimer=1029}] run data merge entity @e[type=armor_stand,tag=giantvis1,limit=1] {Pose:{RightArm:[4F,0F,0F],LeftArm:[-4F,0F,0F]}}
execute if entity @s[scores={acttimer=1031}] run data merge entity @e[type=armor_stand,tag=giantvis1,limit=1] {Pose:{RightArm:[6F,0F,0F],LeftArm:[-6F,0F,0F]}}
execute if entity @s[scores={acttimer=1033}] run data merge entity @e[type=armor_stand,tag=giantvis1,limit=1] {Pose:{RightArm:[8F,0F,0F],LeftArm:[-8F,0F,0F]}}

execute if entity @s[scores={acttimer=1025}] run data merge entity @e[type=armor_stand,tag=giantvis2,limit=1] {Pose:{RightArm:[0F,0F,0F],LeftArm:[0F,0F,0F]}}
execute if entity @s[scores={acttimer=1027}] run data merge entity @e[type=armor_stand,tag=giantvis2,limit=1] {Pose:{RightArm:[0F,-2F,0F],LeftArm:[0F,-2F,0F]}}
execute if entity @s[scores={acttimer=1029}] run data merge entity @e[type=armor_stand,tag=giantvis2,limit=1] {Pose:{RightArm:[0F,-4F,0F],LeftArm:[0F,-4F,0F]}}
execute if entity @s[scores={acttimer=1031}] run data merge entity @e[type=armor_stand,tag=giantvis2,limit=1] {Pose:{RightArm:[0F,-6F,0F],LeftArm:[0F,-6F,0F]}}
execute if entity @s[scores={acttimer=1033}] run data merge entity @e[type=armor_stand,tag=giantvis2,limit=1] {Pose:{RightArm:[0F,-8F,0F],LeftArm:[0F,-8F,0F]}}