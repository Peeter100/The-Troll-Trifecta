# This pair of functions is used to stop an NPC's head
# from rotating if it's going to be switching positions

# It's that weird bug if you tp an entity every tick

tag @s add stoplooking
schedule function ttt:npc_resume_looking 4t replace