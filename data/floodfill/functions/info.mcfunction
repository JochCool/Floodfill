## <name>floodfill:info</name>
## <author>JochCool</author>
## <summary>
## Player-triggered. Replies with information about the datapack.
## </summary>
## <as>The player to whom the information should be presented.</as>

tellraw @s {"text":"","extra":[{"text":"The Floodfill datapack","color":"yellow","bold":true,"clickEvent":{"action":"open_url","value":"https://github.com/JochCool/Floodfill"},"hoverEvent":{"action":"show_text","contents":"View GitHub repository"}},{"text":" by "},{"text":"JochCool","bold":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UC6e7oGAoGGk7TU3ycCVlijw"},"hoverEvent":{"action":"show_text","contents":"View my YouTube channel"}},{"text":"\n To start a floodfill, run "},{"text":"floodfill:start","color":"light_purple","underlined":true,"clickEvent":{"action":"suggest_command","value":"/function floodfill:start"}},{"text":". This will mark the area you are about to fill with green particles, and an options menu will appear in chat. Free your mouse by opening chat, and select one of the options. If the chat message disappears, you can run "},{"text":"floodfill:options","underlined":true,"color":"light_purple","clickEvent":{"action":"suggest_command","value":"/function floodfill:options"}},{"text":" to make it reappear.\n Thank you for using my datapack! \u2665"}]}

# For a properly formatted version of the JSON object of that command, see the file "info_text.json" in this directory.
