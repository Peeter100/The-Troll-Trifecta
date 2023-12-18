tag @a remove importantsans
execute as @r[nbt={Inventory:[{tag:{unditem:1b}}]},scores={x=-48..}] run tag @s add importantsans
scoreboard players set @s dialoguetime 0
stopsound @a master custom.act2.undyne.speech
execute if entity @a[nbt={Inventory:[{tag:{obamasword:1b}}]}] if entity @s[scores={dialogueseq=2}] run scoreboard players set @s dialogueseq 4
execute if entity @a[nbt={Inventory:[{tag:{flamebow:1b}}]}] if entity @s[scores={dialogueseq=2}] run scoreboard players set @s dialogueseq 5
execute if entity @a[nbt={Inventory:[{tag:{pickaxe:1b}}]}] if entity @s[scores={dialogueseq=2}] run scoreboard players set @s dialogueseq 6
execute if entity @s[scores={dialogueseq=2}] run scoreboard players set @s dialogueseq 3