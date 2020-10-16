## <name>floodfill_internal:marker_tick</name>
## <author>JochCool</author>
## <summary>
## Ticking function for floodfill_markers
## </summary>
## <as>Each floodfill_marker</as>
## <at>The same floodfill_marker</as>

# Stay alive
data modify entity @s Age set value 0

# This way, my owner will have an id of 0
scoreboard players operation @a floodfill_id -= @s floodfill_id

# I should be deleted if my owner is offline
execute unless entity @a[scores={floodfill_id=0}] run tag @s add floodfill_marker_doomed

# Show particle to owner
execute unless entity @s[tag=floodfill_marker_doomed] run particle minecraft:composter ~ ~ ~ 0 0 0 0 1 force @a[scores={floodfill_id=0},limit=1]

# Restore scoreboard
scoreboard players operation @a floodfill_id += @s floodfill_id

execute if entity @s[tag=floodfill_marker_doomed] run kill @s
