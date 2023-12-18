summon lightning_bolt ~ ~ ~
execute if predicate ttt:10ch run summon creeper ~ ~ ~ {Silent:1b,Invulnerable:1b,Team:"enemy",Health:100f,Fuse:0,Tags:["forkill"],Attributes:[{Name:generic.max_health,Base:100}]}
#effect give @a[team=p,distance=..5] instant_damage 1 0 true