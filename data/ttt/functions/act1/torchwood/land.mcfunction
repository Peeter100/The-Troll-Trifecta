kill @e[type=falling_block,tag=torchwoodfall]
particle explosion_emitter 25.0 27.0 48.0 2 .8 2 0 5 force @a
particle lava 25.0 26 48.0 2 .4 2 .5 200 force @a
playsound block.stone.break master @a 25.0 28.0 48.0 1000
playsound block.stone.break master @a 25.0 28.0 48.0 1000
playsound block.grass.break master @a 25.0 28.0 48.0 1000
playsound block.fire.extinguish master @a 25.0 28.0 48.0 1000
playsound block.fire.extinguish master @a 25.0 28.0 48.0 1000
schedule function ttt:act1/torchwood/land2 1t replace