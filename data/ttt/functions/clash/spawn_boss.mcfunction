scoreboard players set @s[scores={cr_beeninbattle=..2}] cr_beeninbattle 3
tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"defeat the ","color":"#C4E2FF","font":"sans"},{"text":"Giant","color":"gold"},{"text":" and the arrow is yours","color":"#C4E2FF","font":"sans"}]
execute as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_long master @a ~ ~ ~ 1000
bossbar set minecraft:gianthp players @a
bossbar set minecraft:gianthp visible true
tp @e[tag=giantboss] -58 16 150
schedule function ttt:clash/sans_hitbox_msg 60t replace
particle cloud -58 20 150 2 5 2 0 400 normal @a
summon vex -58 21 150 {CustomNameVisible:1b,Team:"enemy",PersistenceRequired:1b,CanPickUpLoot:0b,Health:1f,BoundX:-58,BoundY:16,BoundZ:150,LifeTicks:999999,Tags:["clashvex","forkill"],CustomName:'{"text":"Twitter User","color":"aqua","italic":false}',HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.attack_damage,Base:1},{Name:generic.attack_knockback,Base:1}]}