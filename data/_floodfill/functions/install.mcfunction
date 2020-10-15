## <name>_floodfill:install</name>
## <author>JochCool</author>
## <summary>
## Sets up the datapack. This function should never be called if it has already been installed.
## </summary>

# Will be incremented every time a new player gets a new id
scoreboard players set #nextid floodfill_id 1

gamerule sendCommandFeedback false

tellraw @a {"text":"The Floodfill datapack has been successfully installed."}
