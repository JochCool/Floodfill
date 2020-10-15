# floodfill:deselect
# Player-triggered or triggered by floodfill:start. Deletes all markers with the same id as the triggering player.

tag @s add floodfill_player_deselecting
execute as @e[tag=floodfill_marker] if score @s floodfill_id = @a[tag=floodfill_player_deselecting,limit=1] floodfill_id run kill @s
tag @s remove floodfill_player_deselecting

tellraw @s {"text":"Removed all selected positions."}
