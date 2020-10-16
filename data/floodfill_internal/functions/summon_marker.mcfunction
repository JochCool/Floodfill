## <name>floodfill_internal:summon_marker</name>
## <author>JochCool</author>
## <summary>
## Summons one marker at the current position and recursively summons more for floodfilling.
## </summary>
## <as>The player to whom this marker will belong</as>
## <at>The position where this marker will be spawned</at>

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["floodfill_marker","floodfill_marker_new"],Age:0,Duration:2147483647,NoGravity:1b,Glowing:1b,CustomName:'{"text":"Selected floodfilling block"}',Invulerable:1b,Silent:1b}

# Assign ID
scoreboard players operation @e[tag=floodfill_marker_new,limit=1] floodfill_id = @s floodfill_id
tag @e[tag=floodfill_marker_new,limit=1] remove floodfill_marker_new

# Summon the next ones
execute if entity @s[tag=X] positioned ~1 ~ ~ if block ~ ~ ~ #floodfill:blocks_to_replace if entity @s[distance=..10] unless entity @e[tag=floodfill_marker,distance=..0.01] run function floodfill_internal:summon_marker
execute if entity @s[tag=X] positioned ~-1 ~ ~ if block ~ ~ ~ #floodfill:blocks_to_replace if entity @s[distance=..10] unless entity @e[tag=floodfill_marker,distance=..0.01] run function floodfill_internal:summon_marker
execute if entity @s[tag=Y] positioned ~ ~1 ~ if block ~ ~ ~ #floodfill:blocks_to_replace if entity @s[distance=..10] unless entity @e[tag=floodfill_marker,distance=..0.01] run function floodfill_internal:summon_marker
execute if entity @s[tag=Y] positioned ~ ~-1 ~ if block ~ ~ ~ #floodfill:blocks_to_replace if entity @s[distance=..10] unless entity @e[tag=floodfill_marker,distance=..0.01] run function floodfill_internal:summon_marker
execute if entity @s[tag=Z] positioned ~ ~ ~1 if block ~ ~ ~ #floodfill:blocks_to_replace if entity @s[distance=..10] unless entity @e[tag=floodfill_marker,distance=..0.01] run function floodfill_internal:summon_marker
execute if entity @s[tag=Z] positioned ~ ~ ~-1 if block ~ ~ ~ #floodfill:blocks_to_replace if entity @s[distance=..10] unless entity @e[tag=floodfill_marker,distance=..0.01] run function floodfill_internal:summon_marker
