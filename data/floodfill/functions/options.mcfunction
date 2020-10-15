## <name>floodfill:options</name>
## <author>JochCool</author>
## <summary>
## Either player-triggered or triggered by another function. Lists possible commands to the executing player to use after running floodfill:start.
## </summary>
## <as>The player to whom this list of commands should be presented</as>

# Count markers in a temporary variable
scoreboard players set #temp floodfill_id 0
tag @s add floodfill_counting
execute as @e[tag=floodfill_marker] if score @s floodfill_id = @a[tag=floodfill_counting,limit=1] floodfill_id run scoreboard players add #temp floodfill_id 1
tag @s remove floodfill_counting

execute unless score #temp floodfill_id matches 1.. run tellraw @s {"text":"There are currently no positions selected. You can select an area using the function floodfill:start.","color":"red","clickEvent":{"action":"suggest_command","value":"/function floodfill:start"}}

execute if score #temp floodfill_id matches 1.. run tellraw @s {"score":{"objective":"floodfill_id","name":"#temp"},"extra":[{"text":" positions have been selected. Choose an option:\n","color":"yellow"},{"clickEvent":{"action":"run_command","value":"/function floodfill:deselect"},"hoverEvent":{"action":"show_text","value":"Click to deselect the current area"},"text":"\u2022 [","extra":[{"text":"Deselect locations","bold":true,"color":"dark_red"},{"text":"]\n"}]},{"clickEvent":{"action":"suggest_command","value":"/execute at @e[tag=floodfill_marker] if score @e[tag=floodfill_marker,distance=..0.01,limit=1] floodfill_id = @s floodfill_id run setblock ~ ~ ~ minecraft:"},"hoverEvent":{"action":"show_text","value":"Click to fill in which block should be placed at the selected positions"},"text":"\u2022 [","extra":[{"text":"Place blocks","bold":true,"color":"dark_green"},{"text":"]\n"}]},{"clickEvent":{"action":"run_command","value":"/function floodfill:start"},"hoverEvent":{"action":"show_text","value":"Click to deselect the current area and immediately select another"},"text":"\u2022 [","extra":[{"text":"Select another location","color":"blue","bold":true},{"text":"]"}]}]}

# For a properly formatted version of the JSON object of that second command, see the file "options_text.json" in this directory.
