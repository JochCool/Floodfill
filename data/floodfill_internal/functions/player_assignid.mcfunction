## <name>floodfill_internal:player_assignid</name>
## <author>JochCool</author>
## <summary>
## Assigns a new ID to this player
## </summary>
## <as>The player that should get the new ID</as>

scoreboard players operation @s floodfill_id = #nextid floodfill_id
scoreboard players add #nextid floodfill_id 1
