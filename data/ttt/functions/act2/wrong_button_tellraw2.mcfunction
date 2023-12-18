execute unless entity @a[tag=buttonvictim] run tag @r[team=p] add buttonvictim
tellraw @a [{"text":"<","color":"white"},{"selector":"@r[tag=buttonvictim]","color":"aqua"},{"text":"> "},{"text":"Maybe there's an item I can use to open the gate...","color":"aqua"}]
tag @a remove buttonvictim