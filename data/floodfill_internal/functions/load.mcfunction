## <name>floodfill_internal:load</name>
## <author>JochCool</author>
## <summary>
## Triggered when the datapack loads. Calls the install function if this datapack has not been properly installed.
## </summary>

scoreboard objectives add floodfill_id dummy {"text":"IDs for the Floodfill datapack"}

execute unless score #nextid floodfill_id matches 0.. run function floodfill_internal:install
