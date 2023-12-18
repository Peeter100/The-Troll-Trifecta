scoreboard players add @s am_gamescore3 1
playsound block.grass.place master @a ~ ~ ~ 1000
particle block dirt ~ ~.1 ~ 0 0 0 .1 50 normal @a
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","amogtask","plantblocker"],DisabledSlots:4144959}
execute if block ~ ~ ~ potted_white_tulip run scoreboard players add @s am_gamescore2 1