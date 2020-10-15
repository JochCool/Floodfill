## <name>floodfill:start</name>
## <author>JochCool</author>
## <summary>
## Player-triggered. Initialises floodfill after some checks.
## </summary>
## <as>The player that intents to initialise a floodfill</as>

tag @s add floodfill_filling

# These functions will remove the tag if there is an error
execute at @s unless block ~ ~ ~ #floodfill:blocks_to_replace run function _floodfill:errors/invalid_block
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 as @e[tag=floodfill_marker,distance=..0.01] unless score @s floodfill_id = @a[tag=floodfill_filling,limit=1] floodfill_id as @a[tag=floodfill_filling,limit=1] run function _floodfill:errors/already_selected

# No error? Then start
execute if entity @s[tag=floodfill_filling] at @s run function _floodfill:initialise_fill

#tag @s remove floodfill_filling
