## <name>floodfill:already_selected</name>
## <author>JochCool</author>
## <summary>
## Sends the player an error message for attempting to floodfill in a place that has already been selected by someone else.
## </summary>
## <as>The player to whom the error message should be shown</as>

tellraw @s {"text":"This area has already been selected by someone else. Please wait until the other person is finished.", "color":"red"}
tag @s remove floodfill_filling
