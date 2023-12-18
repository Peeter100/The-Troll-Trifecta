execute if entity @s[type=vex] as @r[tag=snowthrowing] at @s run function ttt:finale/phase2/vex_hit
execute unless entity @s[tag=blazeprot] run effect give @s instant_damage 1 2 true
execute unless entity @s[tag=blazeprot] run effect give @s slowness 10 2 false