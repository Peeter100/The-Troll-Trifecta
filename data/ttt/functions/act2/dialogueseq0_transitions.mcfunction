execute if entity @s[scores={cr_seensans=2..,cr_beeninbattle=..3}] if entity @a[team=p,scores={x=-37..-25,z=..39}] run function ttt:act2/dialogueseqm2
execute if entity @s[scores={cr_beeninbattle=4..}] at @a[team=p,scores={x=-9..-8}] if block -8 30 ~ #ttt:passable run function ttt:act2/dialogueseqm2
execute if entity @s[scores={cr_beeninbattle=4..}] if entity @a[team=p,scores={x=..-10}] run function ttt:act2/dialogueseqm2
execute if entity @s[scores={cr_seentails=2},tag=gotwand] if entity @a[team=p,scores={y=22..,z=..19},nbt={Inventory:[{tag:{hoverwand:1b}}]}] run function ttt:act2/dialogueseqm3