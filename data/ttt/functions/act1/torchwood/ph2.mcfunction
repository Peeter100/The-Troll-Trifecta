fill 22 43 50 20 43 52 fire replace #ttt:torchwood
setblock 22 40 50 air destroy
setblock 21 40 51 air destroy
setblock 22 45 52 fire destroy
playsound block.wood.break master @a 21 41 51 1
particle flame 21 43 51 2 2 2 0 50 force @a

schedule function ttt:act1/torchwood/ph3 8t replace