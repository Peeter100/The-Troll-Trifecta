execute if entity @e[type=marker,tag=fnafhost,tag=banlinux] as @e[type=armor_stand,tag=freddy,limit=1] at @s run function ttt:amogus/minigames/id10/jumpscare_freddy
execute unless entity @e[type=marker,tag=fnafhost,tag=banlinux] if entity @e[type=chest_minecart,tag=linux,nbt={Items:[{tag:{button:1b}}]}] run function ttt:amogus/minigames/id10/linux_wrong
execute unless entity @e[type=marker,tag=fnafhost,tag=banlinux] unless entity @e[type=chest_minecart,tag=linux,nbt={Items:[{tag:{button:1b}}]}] run function ttt:amogus/minigames/id10/linux_correct