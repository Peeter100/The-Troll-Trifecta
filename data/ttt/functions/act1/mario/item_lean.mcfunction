playsound custom.act1.mario.lean master @a ~ ~ ~
effect give @s nausea 25 0 true
scoreboard players set @s deathreason 38
#####summon armor_stand 28 ~ 39 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["forkill","leantptarget"]}
clear @s carrot_on_a_stick{leanflower:1b}
scoreboard players set @s rc 0