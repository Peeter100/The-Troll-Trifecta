scoreboard players add @s am_played 1
execute if entity @a[tag=amplayer,scores={Game_Choice=1}] run scoreboard players set @s acttimer 2100
execute if entity @a[tag=amplayer,scores={Game_Choice=2}] if score @s actunlocked matches ..3 if score @s am_played matches 1000.. run function ttt:amogus/victory
execute if entity @a[tag=amplayer,scores={Game_Choice=2}] if score @s actunlocked matches 4.. run function ttt:amogus/victory

scoreboard players reset @a Game_Choice