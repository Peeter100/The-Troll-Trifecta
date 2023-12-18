execute if entity @s[scores={x=22..53,z=89..117}] unless entity @e[type=marker,tag=sv,scores={am_location=0}] run title @a actionbar {"text":"Cafeteria","color":"white"}
execute if entity @s[scores={x=22..53,z=89..117}] run scoreboard players set @e[type=marker,tag=sv] am_location 0

execute if entity @s[scores={x=-12..13,z=91..107}] unless entity @e[type=marker,tag=sv,scores={am_location=1}] run title @a actionbar {"text":"Storage","color":"white"}
execute if entity @s[scores={x=-12..13,z=91..107}] run scoreboard players set @e[type=marker,tag=sv] am_location 1

execute if entity @s[scores={x=5..18,z=109..122}] unless entity @e[type=marker,tag=sv,scores={am_location=2}] run title @a actionbar {"text":"Admin","color":"white"}
execute if entity @s[scores={x=5..18,z=109..122}] run scoreboard players set @e[type=marker,tag=sv] am_location 2

execute if entity @s[scores={x=-13..-3,z=108..121}] unless entity @e[type=marker,tag=sv,scores={am_location=3}] run title @a actionbar {"text":"Communication","color":"white"}
execute if entity @s[scores={x=-13..-3,z=108..121}] run scoreboard players set @e[type=marker,tag=sv] am_location 3

execute if entity @s[scores={x=-5..6,z=122..133}] unless entity @e[type=marker,tag=sv,scores={am_location=4}] run title @a actionbar {"text":"Shields","color":"white"}
execute if entity @s[scores={x=-5..6,z=122..133}] run scoreboard players set @e[type=marker,tag=sv] am_location 4

execute if entity @s[scores={x=22..27,z=117..125}] unless entity @e[type=marker,tag=sv,scores={am_location=5}] run title @a actionbar {"text":"O2","color":"white"}
execute if entity @s[scores={x=22..27,z=117..125}] run scoreboard players set @e[type=marker,tag=sv] am_location 5

execute if entity @s[scores={x=14..28,z=141..153}] unless entity @e[type=marker,tag=sv,scores={am_location=6}] run title @a actionbar {"text":"Navigation","color":"white"}
execute if entity @s[scores={x=14..28,z=141..153}] run scoreboard players set @e[type=marker,tag=sv] am_location 6

execute if entity @s[scores={x=31..44,z=121..135}] unless entity @e[type=marker,tag=sv,scores={am_location=7}] run title @a actionbar {"text":"Weapons","color":"white"}
execute if entity @s[scores={x=31..44,z=121..135}] run scoreboard players set @e[type=marker,tag=sv] am_location 7

execute if entity @s[scores={x=-1..16,z=78..91}] unless entity @e[type=marker,tag=sv,scores={am_location=8}] run title @a actionbar {"text":"Electrical","color":"white"}
execute if entity @s[scores={x=-1..16,z=78..91}] run scoreboard players set @e[type=marker,tag=sv] am_location 8

execute if entity @s[scores={x=-1..12,z=56..68}] unless entity @e[type=marker,tag=sv,scores={am_location=9}] run title @a actionbar {"text":"Lower Engine","color":"white"}
execute if entity @s[scores={x=-1..12,z=56..68}] run scoreboard players set @e[type=marker,tag=sv] am_location 9

execute if entity @s[scores={x=13..29,z=47..58}] unless entity @e[type=marker,tag=sv,scores={am_location=10}] run title @a actionbar {"text":"Reactor","color":"white"}
execute if entity @s[scores={x=13..29,z=47..58}] run scoreboard players set @e[type=marker,tag=sv] am_location 10

execute if entity @s[scores={x=16..28,z=68..76}] unless entity @e[type=marker,tag=sv,scores={am_location=11}] run title @a actionbar {"text":"Security","color":"white"}
execute if entity @s[scores={x=16..28,z=68..76}] run scoreboard players set @e[type=marker,tag=sv] am_location 11

execute if entity @s[scores={x=30..43,z=56..68}] unless entity @e[type=marker,tag=sv,scores={am_location=12}] run title @a actionbar {"text":"Upper Engine","color":"white"}
execute if entity @s[scores={x=30..43,z=56..68}] run scoreboard players set @e[type=marker,tag=sv] am_location 12

execute if entity @s[scores={x=19..32,z=77..88}] unless entity @e[type=marker,tag=sv,scores={am_location=13}] run title @a actionbar {"text":"MedBay","color":"white"}
execute if entity @s[scores={x=19..32,z=77..88}] run scoreboard players set @e[type=marker,tag=sv] am_location 13

execute if entity @s[scores={x=17,z=128}] run scoreboard players set @e[type=marker,tag=sv] am_location 14