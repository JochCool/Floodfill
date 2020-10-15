## <name>floodfill:invalid_block</name>
## <author>JochCool</author>
## <summary>
## Sends the player an error message for attempting to floodfill in a block that you can't fill.
## </summary>
## <as>The player to whom the error message should be shown</as>

tellraw @s {"text":"There is no air where you're standing. Sadly the datapack currently only works for air blocks.", "color":"red"}
tag @s remove floodfill_filling
