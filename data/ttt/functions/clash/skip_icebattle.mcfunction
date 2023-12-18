execute if score @s cr_beeninbattle matches ..4 run scoreboard players set @s acttimer 600
# execute if score @s cr_beeninbattle matches ..4 run scoreboard players set @s cr_score 5000
execute if score @s cr_beeninbattle matches ..4 run scoreboard players set @s cr_score 5500
execute if score @s cr_beeninbattle matches 5.. run scoreboard players set @s acttimer 991
execute if score @s cr_beeninbattle matches 5.. run scoreboard players set @s cr_score 6000
spreadplayers -57 134 1 3 under 18 false @a
execute as @a[team=p] at @s run tp @s ~ 16 ~ 0 0
tellraw @a [{"text":"<"},{"text":"Sans","color":"#C4E2FF"},{"text":"> "},{"text":"let's skip the boring part","color":"#C4E2FF","font":"sans"}]
execute at @r[tag=clashplayer] run playsound custom.act2.sans.speech_mid master @a ~ ~ ~ 1000

function ttt:clash/papyrus_items
give @a[team=p] splash_potion{display:{Name:'{"text":"Potion of Healing","color":"yellow","italic":false}'},CustomPotionEffects:[{Id:5,Amplifier:1b,Duration:60,ShowParticles:1b},{Id:6,Amplifier:1b,Duration:1}],CustomPotionColor:16750335} 1
give @a[team=p] potion{display:{Name:'{"text":"Potion of Productivity","color":"gold","italic":false}'},CustomPotionEffects:[{Id:1,Amplifier:4b,Duration:200,ShowParticles:1b},{Id:5,Amplifier:1b,Duration:200,ShowParticles:1b},{Id:6,Amplifier:10b,Duration:1},{Id:11,Amplifier:1b,Duration:200,ShowParticles:1b}],CustomPotionColor:16711680} 1
# execute if score @s cr_beeninbattle matches 5.. run give @a[team=p] potion{display:{Name:'{"text":"Potion of Productivity","color":"gold","italic":false}'},CustomPotionEffects:[{Id:1,Amplifier:4b,Duration:200,ShowParticles:1b},{Id:5,Amplifier:1b,Duration:200,ShowParticles:1b},{Id:6,Amplifier:10b,Duration:1},{Id:11,Amplifier:1b,Duration:200,ShowParticles:1b}],CustomPotionColor:16711680} 1
execute if score @s cr_beeninbattle matches ..4 run give @a[team=p] gold_ingot{display:{Name:'{"text":"Snowball Ammo","color":"aqua","italic":false}'},CustomModelData:2} 1