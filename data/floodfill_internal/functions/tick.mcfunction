## <name>_floodfill:tick</name>
## <author>JochCool</author>
## <summary>
## The main ticking function; tagged in #minecraft:tick
## </summary>

#say ticking

# Find new players
execute as @a unless entity @s[scores={floodfill_id=0..}] run function _floodfill:player_assignid

# Delete useless markers
execute as @e[tag=floodfill_marker] at @s run function _floodfill:marker_tick
