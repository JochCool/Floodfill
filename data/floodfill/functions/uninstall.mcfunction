## <name>floodfill:uninstall</name>
## <author>JochCool</author>
## <summary>
## Player-triggered. Uninstalls this datapack.
## </summary>

kill @e[tag=floodfill_marker]
scoreboard objectives remove floodfill_id
datapack disable "file/Floodfill.zip"

tellraw @a {"clickEvent":{"action":"run_command","value":"/datapack disable \"file/Floodfill.zip\""},"hoverEvent":{"action":"show_text","value":"Click to disable the datapack"},"text":"The Floodfill datapack has been uninstalled. ","extra":[{"text":"Please properly disable this datapack","bold":true},{"text":" by running the following command:\n"},{"text":"/datapack disable \"file/Floodfill.zip\"","underlined":true}]}
