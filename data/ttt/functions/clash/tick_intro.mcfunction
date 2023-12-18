execute if entity @s[scores={acttimer=6}] run kill @e[tag=undyne]
execute if entity @s[scores={acttimer=6}] run tag @r[team=p,nbt={Inventory:[{tag:{flamebow:1b}}]}] add hadbow
execute if entity @s[scores={acttimer=6}] run clear @a
execute if entity @s[scores={acttimer=6}] run kill @e[type=item]
execute if entity @s[scores={acttimer=6}] run kill @e[type=tnt]
execute if entity @s[scores={acttimer=6}] run effect give @a[team=p] invisibility 3 0 true
execute if entity @s[scores={acttimer=6}] run tp @a -51 27 108
execute if entity @s[scores={acttimer=6}] run time set midnight

# skip :))
execute if entity @s[scores={acttimer=46,cr_beeninbattle=4..}] run function ttt:clash/skip_icebattle

execute if entity @s[scores={acttimer=6..45}] run title @a actionbar {"text":"LOADING..."}
execute if entity @s[scores={acttimer=46..}] run title @a actionbar [{"text":"Score: ","color":"green"},{"score":{"name":"@s","objective":"cr_score"},"color":"green"}]

execute if entity @s[scores={acttimer=46}] run spreadplayers -57 134 1 3 under 18 false @a
execute if entity @s[scores={acttimer=46}] as @a[team=p] at @s run tp @s ~ 16 ~ 0 0
execute if entity @s[scores={acttimer=46}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"ok so i'm gonna need you to defeat these guys","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=46}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_long master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=80}] positioned -62 16 160 run function ttt:clash/spawn_ice_coords
execute if entity @s[scores={acttimer=82}] positioned -60 16 161 run function ttt:clash/spawn_ice_coords
execute if entity @s[scores={acttimer=84}] positioned -58 16 160 run function ttt:clash/spawn_ice_coords
execute if entity @s[scores={acttimer=86}] positioned -56 16 161 run function ttt:clash/spawn_ice_coords
execute if entity @s[scores={acttimer=88}] positioned -54 16 160 run function ttt:clash/spawn_ice_coords
execute if entity @s[scores={acttimer=90}] positioned -57 16 162 run function ttt:clash/spawn_ice_coords
execute if entity @s[scores={acttimer=92}] positioned -55 16 162 run function ttt:clash/spawn_ice_coords

execute if entity @s[scores={acttimer=120}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"oh wait","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=120}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_short master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=140}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"i forgot","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=140}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_short master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=160}] as @a[team=p] at @s run playsound entity.item.pickup master @s ~ ~ ~ 1000
execute if entity @s[scores={acttimer=160}] run item replace entity @a[team=p] hotbar.0 with paper{display:{Name:'{"text":"Papyrus","color":"red","italic":false}',Lore:['{"text":"Throw on top of a","color":"gray","italic":false}','[{"text":"gold block","color":"yellow","italic":false},{"text":" to obtain","color":"gray"}]','{"text":"powerful items!","color":"gray","italic":false}']},oofie:1b} 1
execute if entity @s[scores={acttimer=160}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"here's ","color":"#C4E2FF","font":"sans"},{"text":"Papyrus","color":"red"}]
execute if entity @s[scores={acttimer=160}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=240}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"get it?","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=240}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_short master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=260}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"Papyrus","color":"red"},{"text":"?","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=260}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_short master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=280}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"like the off-brand paper?","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=280}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=340}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"you got this kid","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=340}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_short master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=391..399}] run scoreboard players set @s acttimer 390
execute positioned -58 16 150 if entity @e[type=item,nbt={Item:{tag:{oofie:1b}}},distance=0..1] run function ttt:clash/papyrus_items

execute store result score @s cr_icealive if entity @e[tag=clashmob,tag=icemob]
execute if entity @s[scores={acttimer=239..399}] unless score @s cr_icealive = @s cr_icespawned run scoreboard players set @s acttimer 400
execute unless score @s cr_icealive = @s cr_icespawned run function ttt:clash/kill_ice

execute as @e[tag=clashmob] at @s if block ~ ~ ~ water run kill @s
execute as @a[team=p,scores={rc=1..}] at @s run tellraw @s {"text":"No ammo!","color":"red"}

execute if entity @s[scores={acttimer=400}] run stopsound @a master
execute if entity @s[scores={acttimer=400,cr_beeninbattle=3..}] run scoreboard players set @s acttimer 531
execute if entity @s[scores={acttimer=400}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"more gobblers are spawning","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=400}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=440}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"i think you made them angry","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=440}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=480}] run tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"have at it kid","color":"#C4E2FF","font":"sans"}]
execute if entity @s[scores={acttimer=480}] as @r[tag=clashplayer] at @s run playsound custom.act2.sans.speech_short master @a ~ ~ ~ 1000

execute if entity @s[scores={acttimer=410}] run function ttt:clash/spawn_ice
execute if entity @s[scores={acttimer=420}] run function ttt:clash/spawn_ice
execute if entity @s[scores={acttimer=430}] run function ttt:clash/spawn_ice
execute if entity @s[scores={acttimer=440}] run function ttt:clash/spawn_ice
execute if entity @s[scores={acttimer=450}] run function ttt:clash/spawn_ice
execute if entity @s[scores={acttimer=470}] run function ttt:clash/spawn_ice
execute if entity @s[scores={acttimer=490}] run function ttt:clash/spawn_ice
execute if entity @s[scores={acttimer=510}] run function ttt:clash/spawn_ice
execute if entity @s[scores={acttimer=530}] run function ttt:clash/spawn_ice