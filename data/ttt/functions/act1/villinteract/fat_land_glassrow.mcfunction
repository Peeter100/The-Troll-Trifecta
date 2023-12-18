execute if block ~ ~ ~ glass_pane run setblock ~ ~ ~ air destroy
execute if block ~1 ~ ~ glass_pane run setblock ~1 ~ ~ air destroy
execute if block ~-1 ~ ~ glass_pane run setblock ~-1 ~ ~ air destroy
execute if block ~ ~ ~1 glass_pane run setblock ~ ~ ~1 air destroy
execute if block ~ ~ ~-1 glass_pane run setblock ~ ~ ~-1 air destroy
execute if block ~1 ~ ~1 glass_pane run setblock ~1 ~ ~1 air destroy
execute if block ~-1 ~ ~1 glass_pane run setblock ~-1 ~ ~1 air destroy
execute if block ~1 ~ ~-1 glass_pane run setblock ~1 ~ ~-1 air destroy
execute if block ~-1 ~ ~-1 glass_pane run setblock ~-1 ~ ~-1 air destroy

execute if block ~2 ~ ~ glass_pane run setblock ~2 ~ ~ air destroy
execute if block ~-2 ~ ~ glass_pane run setblock ~-2 ~ ~ air destroy
execute if block ~ ~ ~2 glass_pane run setblock ~ ~ ~2 air destroy
execute if block ~ ~ ~-2 glass_pane run setblock ~ ~ ~-2 air destroy
execute if block ~2 ~ ~2 glass_pane run setblock ~2 ~ ~2 air destroy
execute if block ~-2 ~ ~2 glass_pane run setblock ~-2 ~ ~2 air destroy
execute if block ~2 ~ ~-2 glass_pane run setblock ~2 ~ ~-2 air destroy
execute if block ~-2 ~ ~-2 glass_pane run setblock ~-2 ~ ~-2 air destroy

execute if score @s z matches 77..88 run function ttt:act1/villinteract/fat_land_glassrow_full