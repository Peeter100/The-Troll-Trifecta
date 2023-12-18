execute if entity @s[scores={am_gametimer=400}] run function ttt:amogus/minigames/id4/jumprope_start
execute as @a[tag=amplayer,scores={z=..141}] at @s run tp @s ~ ~ 142

execute if entity @s[scores={am_gametimer=402}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[270f,0f,0f]}}
execute if entity @s[scores={am_gametimer=403}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[288f,0f,0f]}}
execute if entity @s[scores={am_gametimer=404}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[306f,0f,0f]}}
execute if entity @s[scores={am_gametimer=405}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[324f,0f,0f]}}
execute if entity @s[scores={am_gametimer=406}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[342f,0f,0f]}}
execute if entity @s[scores={am_gametimer=407}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[0f,0f,0f]}}
execute if entity @s[scores={am_gametimer=408}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[18f,0f,0f]}}
execute if entity @s[scores={am_gametimer=409}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[36f,0f,0f]}}
execute if entity @s[scores={am_gametimer=410}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[54f,0f,0f]}}
execute if entity @s[scores={am_gametimer=411}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[72f,0f,0f]}}
execute if entity @s[scores={am_gametimer=412}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[90f,0f,0f]}}
execute if entity @s[scores={am_gametimer=413}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[108f,0f,0f]}}
execute if entity @s[scores={am_gametimer=414}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[126f,0f,0f]}}
execute if entity @s[scores={am_gametimer=415}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[144f,0f,0f]}}
execute if entity @s[scores={am_gametimer=416}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[162f,0f,0f]}}
execute if entity @s[scores={am_gametimer=417}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[180f,0f,0f]}}
execute if entity @s[scores={am_gametimer=418}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[198f,0f,0f]}}
execute if entity @s[scores={am_gametimer=419}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[216f,0f,0f]}}
execute if entity @s[scores={am_gametimer=420}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[234f,0f,0f]}}
execute if entity @s[scores={am_gametimer=421}] run data merge entity @e[tag=jumprope,limit=1] {Pose:{RightArm:[252f,0f,0f]}}
execute if entity @s[scores={am_gametimer=421..424}] run scoreboard players set @s am_gametimer 401

execute if entity @s[scores={am_gametimer=408..409}] if entity @a[tag=amplayer,nbt={OnGround:1b}] run function ttt:amogus/minigames/id4/jumprope_fail
execute if entity @s[scores={am_gametimer=418..419}] if entity @a[tag=amplayer,scores={y=22..}] run function ttt:amogus/minigames/id4/jumprope_fail

execute if entity @s[scores={am_gametimer=440}] run tellraw @a [{"text":"<","color":"white"},{"text":"Playtime","color":"red"},{"text":"> "},{"text":"YOU MESSED UP!","color":"red"}]
execute if entity @s[scores={am_gametimer=485..}] run scoreboard players set @s am_gametimer 416

execute as @r[tag=amplayer] at @s run tp @e[tag=jumprope] @s
execute as @e[tag=jumprope] at @s positioned ^ ^ ^0.5 run tp @s ~ 21 ~

execute if entity @a[tag=amplayer,scores={jump=1..}] if entity @s[scores={am_gametimer=401..424}] run function ttt:amogus/minigames/id4/jumprope_jump