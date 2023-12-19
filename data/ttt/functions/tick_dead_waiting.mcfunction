#execute as @a[team=p,x=-1,y=35,z=8,dx=2,dy=1,dz=2,scores={hp=1..,verified=..1}] unless entity @s[tag=deadverify] run function ttt:lobby/deadverify

#execute as @a[scores={Lobby_Trigger=1..}] run function ttt:lobby/deadverify_complete
execute as @a[scores={ms_seqid=1..}] at @s run function ttt:lobby/mpseq/tick

execute if entity @a[team=p,scores={verified=..1}] run title @a[scores={ms_seqid=0}] actionbar {"text":"Waiting for player verification!","color":"green"}
execute if entity @a[team=p,x=-1,y=35,z=8,dx=2,dy=1,dz=2,scores={hp=1..}] unless entity @a[team=p,scores={verified=..1}] run scoreboard players set @s deathtime 2