execute as @e[type=marker,tag=sv,limit=1] run function ttt:fnf/note_miss_sv

title @a subtitle {"text":"MISS","color":"gray"}
execute at @r[team=p] run playsound custom.fnf.note_miss master @a ~ ~ ~ 0.4
kill @s[tag=fnfarrow]

execute as @e[type=marker,tag=sv,scores={fnf_hp=100..}] run function ttt:fnf/die


# OLD VALUES
# (after input engine change)
# 4 --> 6
# 6 --> 9
# 9 --> 13
# 12 --> 17