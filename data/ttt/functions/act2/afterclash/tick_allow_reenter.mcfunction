# Cool stuff (only allow if TNT present)
particle portal -45 32 98 .2 .5 .2 0 3 force @a
execute if entity @a[team=p,scores={x=-45,y=31,z=98}] run function ttt:act2/afterclash/reenter_clash