playsound custom.act1.mario.spit_fire master @a ~ ~ ~
tag @s add spitfire
execute anchored eyes run summon armor_stand ^ ^ ^-0.25 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","leapball","fireball"]}
execute as @e[tag=leapball,tag=fireball,tag=!ready] at @s run tp @s ~ ~ ~ facing entity @p[tag=spitfire] eyes
execute as @e[tag=leapball,tag=fireball,tag=!ready] at @s run tp @s ^ ^ ^1 ~ 0
tag @e[tag=leapball,tag=fireball,tag=!ready] add ready
tag @s remove spitfire
scoreboard players set @s rc 0