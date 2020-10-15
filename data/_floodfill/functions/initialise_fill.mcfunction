## <name>_floodfill:initialise_fill</name>
## <author>JochCool</author>
## <summary>
## Triggered after the checks are done in floodfill:start. Starts the floodfill at the executing position.
## </summary>
## <as>Any player</as>
## <at>The same player</at>

execute as @e[tag=floodfill_marker] if score @s floodfill_id = @a[tag=floodfill_filling,limit=1] floodfill_id run kill @s

# Temporarily add XYZ tags if this person didn't add them
execute if entity @s[tag=!X,tag=!Y,tag=!Z] run function _floodfill:player_addtags

# Trigger the loop, eh, recursion
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function _floodfill:summon_marker

# Remove those tags
execute if entity @s[tag=floodfill_temptags] run function _floodfill:player_removetags

function floodfill:options
