execute unless score @s am_gamescore2 = @r[tag=amplayer] Baldi_Answer unless score @s am_gamescore3 = @r[tag=amplayer] Baldi_Answer run function ttt:amogus/minigames/id5/guess_wrong

execute if entity @s[scores={am_gamescore7=0}] if score @s am_gamescore2 = @r[tag=amplayer] Baldi_Answer run function ttt:amogus/minigames/id5/guess_multiple_half
execute if entity @s[scores={am_gamescore7=0}] if score @s am_gamescore3 = @r[tag=amplayer] Baldi_Answer run function ttt:amogus/minigames/id5/guess_multiple_half

execute if entity @s[scores={am_gamescore7=2}] if score @s am_gamescore2 = @r[tag=amplayer] Baldi_Answer run function ttt:amogus/minigames/id5/guess_multiple_submitted
execute if entity @s[scores={am_gamescore7=3}] if score @s am_gamescore3 = @r[tag=amplayer] Baldi_Answer run function ttt:amogus/minigames/id5/guess_multiple_submitted

execute if entity @s[scores={am_gamescore7=3}] if score @s am_gamescore2 = @r[tag=amplayer] Baldi_Answer run function ttt:amogus/minigames/id5/guess_multiple_full
execute if entity @s[scores={am_gamescore7=2}] if score @s am_gamescore3 = @r[tag=amplayer] Baldi_Answer run function ttt:amogus/minigames/id5/guess_multiple_full