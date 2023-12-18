# THIS FUNCTION IS USED ONLY FOR CREATING SCOREBOARDS
# Some servers tend to nuke scoreboards or gamerules because lololol (fuck you)
# so to pay them back this function is ran every time
# a new player logs on for the first time

# PLEASE DON'T PLAY THIS ON MULTIPLAYER :))
# It's quite buggy


gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck false
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doImmediateRespawn false
gamerule doInsomnia false
gamerule doLimitedCrafting false
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage false
gamerule fallDamage true
gamerule fireDamage true
gamerule forgiveDeadPlayers true
gamerule freezeDamage true
gamerule keepInventory true
gamerule logAdminCommands false
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule playersSleepingPercentage 200
gamerule randomTickSpeed 0
gamerule reducedDebugInfo true
gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true
gamerule universalAnger true

scoreboard objectives add hp health {"text":"Health"}
scoreboard objectives modify hp rendertype hearts
scoreboard objectives add left minecraft.custom:minecraft.leave_game
scoreboard objectives add death deathCount
scoreboard objectives add rc minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add Main_Menu trigger
scoreboard objectives add Answer_Q1 trigger
scoreboard objectives add Answer_Q2 trigger
scoreboard objectives add Answer_Q3 trigger
scoreboard objectives add Game_Choice trigger
scoreboard objectives add Sabotage_ID trigger
scoreboard objectives add Baldi_Answer trigger
scoreboard objectives add Lobby_Trigger trigger
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add killvill minecraft.killed:minecraft.villager
scoreboard objectives add cr_killvex minecraft.killed:minecraft.vex
scoreboard objectives add food food
scoreboard objectives add villinteract minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add mcdonalds minecraft.used:minecraft.potato
scoreboard objectives add walking minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add drinkpotion minecraft.used:minecraft.potion
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add sprinting minecraft.custom:minecraft.sprint_one_cm

scoreboard objectives add deathvis dummy {"text":"Total Deaths","color":"yellow","bold":true}
scoreboard objectives add playing dummy
scoreboard objectives add act dummy
scoreboard objectives add actpart dummy
scoreboard objectives add actunlocked dummy
scoreboard objectives add deathtime dummy
scoreboard objectives add ready dummy
scoreboard objectives add readytimer dummy
scoreboard objectives add playercount dummy
scoreboard objectives add totalcount dummy
scoreboard objectives add readycount dummy
scoreboard objectives add acttimer dummy
scoreboard objectives add deathreason dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add caxis1 dummy
scoreboard objectives add caxis2 dummy
scoreboard objectives add weight dummy
scoreboard objectives add xpoints dummy
scoreboard objectives add hpregen dummy
scoreboard objectives add dialoguetime dummy
scoreboard objectives add dialogueseq dummy
scoreboard objectives add npcbodytp dummy
scoreboard objectives add knowsbname dummy

scoreboard objectives add ms_seqid dummy
scoreboard objectives add ms_seqtimer dummy
scoreboard objectives add ms_seqval dummy
scoreboard objectives add Map_Setup trigger

scoreboard objectives add st_social dummy
scoreboard objectives add st_list dummy
scoreboard objectives add st_scoreboard dummy
scoreboard objectives add st_actprog dummy
scoreboard objectives add st_am_forceid dummy
scoreboard objectives add st_am_singletask dummy
scoreboard objectives add st_am_reqtask dummy
scoreboard objectives add st_am_opimp dummy
scoreboard objectives add st_am_blindcrew dummy
scoreboard objectives add st_fnf_fire dummy
scoreboard objectives add st_bossdiff dummy
scoreboard objectives add st_twt dummy
scoreboard objectives add st_wgun dummy
scoreboard objectives add st_xmas dummy

scoreboard objectives add d1 dummy
scoreboard objectives add d2 dummy
scoreboard objectives add d3 dummy
scoreboard objectives add d4 dummy
scoreboard objectives add d5 dummy
scoreboard objectives add d6 dummy
scoreboard objectives add dseq dummy

scoreboard objectives add fnf_hd_l dummy
scoreboard objectives add fnf_hd_u dummy
scoreboard objectives add fnf_hd_d dummy
scoreboard objectives add fnf_hd_r dummy
scoreboard objectives add fnf_beat dummy
scoreboard objectives add fnf_beatoff dummy
scoreboard objectives add fnf_hp dummy
scoreboard objectives add fnf_mt dummy
scoreboard objectives add fnf_ad_bf dummy
scoreboard objectives add fnf_ad_p dummy
scoreboard objectives add fnf_misses dummy
scoreboard objectives add fnf_dd dummy
scoreboard objectives add fnf_dir_bf dummy
scoreboard objectives add fnf_dir_p dummy
scoreboard objectives add fnf_seentails dummy
scoreboard objectives add fnf_seenfreddy dummy
scoreboard objectives add fnf_actprog dummy
scoreboard objectives add fnf_lavarock dummy
scoreboard objectives add fnf_lavarockmiss dummy
scoreboard objectives add fnf_carpetdeaths dummy
scoreboard objectives add fnf_carpetshots dummy
scoreboard objectives add fnf_usedchest dummy
scoreboard objectives add fnf_haswgun dummy
scoreboard objectives add fnf_tailsstate dummy
scoreboard objectives add fnf_bulliedtails dummy
scoreboard objectives add fnf_bulliedsniper dummy
scoreboard objectives add fnf_wguntutorial dummy

scoreboard objectives add gun_haswater dummy
scoreboard objectives add wand_energy dummy
scoreboard objectives add shoes_ymotion dummy
scoreboard objectives add shoes_ydistance dummy
scoreboard objectives add securitytime dummy
scoreboard objectives add ring_charge dummy
scoreboard objectives add ring_energy dummy

scoreboard objectives add cr_icespawned dummy
scoreboard objectives add cr_icealive dummy
scoreboard objectives add cr_gobspawned dummy
scoreboard objectives add cr_gobalive dummy
scoreboard objectives add cr_barspawned dummy
scoreboard objectives add cr_baralive dummy
scoreboard objectives add cr_witspawned dummy
scoreboard objectives add cr_witalive dummy
scoreboard objectives add cr_hogspawned dummy
scoreboard objectives add cr_hogalive dummy
scoreboard objectives add cr_gianthp dummy
scoreboard objectives add cr_score dummy
scoreboard objectives add cr_beeninbattle dummy
scoreboard objectives add cr_seensans dummy
scoreboard objectives add cr_seentails dummy
scoreboard objectives add cr_buttondeaths dummy

scoreboard objectives add am_maintimer dummy
scoreboard objectives add am_gametimer dummy
scoreboard objectives add am_gameid dummy
scoreboard objectives add am_gamescore1 dummy
scoreboard objectives add am_gamescore2 dummy
scoreboard objectives add am_gamescore3 dummy
scoreboard objectives add am_gamescore4 dummy
scoreboard objectives add am_gamescore5 dummy
scoreboard objectives add am_gamescore6 dummy
scoreboard objectives add am_gamescore7 dummy
scoreboard objectives add am_rickinteract dummy
scoreboard objectives add am_seentrollge dummy
scoreboard objectives add am_seentails dummy
scoreboard objectives add am_seenshadow dummy
scoreboard objectives add am_ricktask dummy
scoreboard objectives add am_played dummy
scoreboard objectives add am_beatfnaf dummy
scoreboard objectives add am_seensans dummy
scoreboard objectives add am_killcool dummy
scoreboard objectives add am_location dummy
scoreboard objectives add am_ventid dummy
scoreboard objectives add am_sabid dummy
scoreboard objectives add am_sabtimer dummy
scoreboard objectives add am_crewmates dummy
scoreboard objectives add am_visualizer dummy
scoreboard objectives add am_sabcool dummy
scoreboard objectives add am_sabfix dummy
scoreboard objectives add am_sabfix2 dummy
scoreboard objectives add am_iconpref dummy
scoreboard objectives add am_gameimportant dummy
scoreboard objectives add am_checkuptimer dummy
scoreboard objectives add am_gamegroup dummy
scoreboard objectives add am_gamegroupseq dummy

scoreboard objectives add am_susscore dummy
scoreboard objectives add am_helpmeter dummy
scoreboard objectives add am_usednearby dummy
scoreboard objectives add am_selfreports dummy
scoreboard objectives add am_blackoutkills dummy
scoreboard objectives add am_sabrange dummy
scoreboard objectives add am_ai_location dummy
scoreboard objectives add am_ai_d_location dummy
scoreboard objectives add am_ai_l_location dummy
scoreboard objectives add am_ai_noticedtime dummy
scoreboard objectives add am_ai_noticeddoor dummy
scoreboard objectives add am_ai_timespent dummy
scoreboard objectives add am_ai_color dummy

scoreboard objectives add am_level dummy
scoreboard objectives add am_levelb dummy
scoreboard objectives add am_lvl_xp dummy
scoreboard objectives add am_lvl_xpreq dummy
scoreboard objectives add am_lvl_addon dummy
scoreboard objectives add am_lvl_sabcool dummy
scoreboard objectives add am_lvl_killcool dummy
scoreboard objectives add am_lvl_crewmates dummy
scoreboard objectives add am_lvl_tasktime dummy
scoreboard objectives add am_lvl_unique dummy
scoreboard objectives add am_lvl_uniquereq dummy

scoreboard objectives add f3_attackid dummy
scoreboard objectives add f3_attacktime dummy
scoreboard objectives add f3_attackcombo dummy
scoreboard objectives add f3_stunmeter dummy
scoreboard objectives add f3_vinspawned dummy
scoreboard objectives add f3_pillspawned dummy
scoreboard objectives add f3_skelspawned dummy
scoreboard objectives add f3_ravspawned dummy
scoreboard objectives add f3_evokespawned dummy
scoreboard objectives add f3_blazespawned dummy
scoreboard objectives add f3_healthmargin dummy
scoreboard objectives add f3_healthmax dummy
scoreboard objectives add f3_deaths dummy
scoreboard objectives add f3_deathhintseq dummy
scoreboard objectives add f3_bosshp dummy
scoreboard objectives add f3_bosstakenhp dummy

scoreboard objectives add xmas_gifts dummy {"text":"Gifts Opened","color":"green","bold":true}
scoreboard objectives add xmas_hasblaster dummy
scoreboard objectives add xmas_hasjolly dummy


team add base {"text":"Unselected Team","color":"white"}
team modify base collisionRule never
team modify base color white
team modify base friendlyFire false
team modify base seeFriendlyInvisibles false
team add p {"text":"Player","color":"aqua"}
team modify p collisionRule never
team modify p color aqua
team modify p friendlyFire false
team modify p seeFriendlyInvisibles false
team add s {"text":"Spectator","color":"gray"}
team modify s collisionRule never
team modify s color gray
team modify s friendlyFire false
team modify s seeFriendlyInvisibles true
team modify s nametagVisibility never
team add enemy {"text":"Enemy","color":"red"}
team modify enemy color gold
team modify enemy friendlyFire false

bossbar add fnfhp {"text":"Health","color":"aqua"}
bossbar set minecraft:fnfhp color purple
bossbar set minecraft:fnfhp max 100
bossbar set minecraft:fnfhp players @a
bossbar set minecraft:fnfhp visible false
bossbar set minecraft:fnfhp value 0
bossbar set minecraft:fnfhp style progress

bossbar add gianthp {"text":"Giant","color":"gold"}
bossbar set minecraft:gianthp color pink
bossbar set minecraft:gianthp max 200
bossbar set minecraft:gianthp players @a
bossbar set minecraft:gianthp visible false
bossbar set minecraft:gianthp value 200
bossbar set minecraft:gianthp style progress

bossbar add amogbar {"text":"Next Task Checkup in:","color":"red"}
bossbar set minecraft:amogbar color red
bossbar set minecraft:amogbar max 1800
bossbar set minecraft:amogbar players @a
bossbar set minecraft:amogbar visible false
bossbar set minecraft:amogbar value 0
bossbar set minecraft:amogbar style progress

bossbar add noisebar {"text":"Noise","color":"green"}
bossbar set minecraft:noisebar color green
bossbar set minecraft:noisebar max 100
bossbar set minecraft:noisebar players @a
bossbar set minecraft:noisebar visible false
bossbar set minecraft:noisebar value 0
bossbar set minecraft:noisebar style notched_20

bossbar add sprintbar {"text":"Stamina","color":"aqua"}
bossbar set minecraft:sprintbar color blue
bossbar set minecraft:sprintbar max 400
bossbar set minecraft:sprintbar players @a
bossbar set minecraft:sprintbar visible false
bossbar set minecraft:sprintbar value 400
bossbar set minecraft:sprintbar style progress

bossbar add trollgebar {"text":"TROLLGE","color":"red","font":"trollge"}
bossbar set minecraft:trollgebar color red
bossbar set minecraft:trollgebar max 600
bossbar set minecraft:trollgebar players @a
bossbar set minecraft:trollgebar visible false
bossbar set minecraft:trollgebar value 600
bossbar set minecraft:trollgebar style notched_6

#define storage minecraft:amogtaskdata
#define storage minecraft:headtest
#define storage minecraft:headfulltest

# execute unless entity @e[tag=sv] run summon armor_stand 0 27 0 {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["sv","server"],DisabledSlots:4144959}
execute unless entity @e[tag=sv] run summon marker 0 27 0 {NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["sv","server"]}
execute as @e[tag=sv] at @s unless score @s playing matches 0.. run function ttt:base_reset
scoreboard objectives setdisplay list hp
scoreboard objectives setdisplay belowName
scoreboard objectives setdisplay sidebar deathvis

function ttt:rejoin
scoreboard players set @s verified 1
scoreboard players set @s deathvis 0
scoreboard players set @s weight 0
difficulty hard