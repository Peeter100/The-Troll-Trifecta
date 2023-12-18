playsound custom.act1.undertale master @a ~ ~ ~ 1000
effect give @s slowness 1 255 true
tag @s add noheal
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","amogtask","sansloc"],DisabledSlots:4144959}
tp @e[type=armor_stand,tag=sansloc] @s
scoreboard players set @e[type=marker,tag=sv,limit=1] am_gametimer 1100
execute if entity @s[nbt={SelectedItem:{tag:{hoverwand:1b}}}] as @e[type=marker,tag=sv,limit=1] if score @s am_seensans matches ..1 run scoreboard players set @s am_seensans 2