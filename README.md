# Floodfill datapack
This is a simple, multiplayer-compatible Minecraft datapack that adds a [floodfill](https://en.wikipedia.org/wiki/Flood_fill) function to Minecraft.

## Usage
To be able to use it, you need to have the datapack installed (see [Installation](#Installation)), and you need to have operator permissions on the server.

To start a floodfill, go to the area where you want to fill and run this command: `/function floodfill:start`. This will select the positions you are about to fill. Those positions are marked with a floating green star. A chat message will also appear containing some options. You can free your mouse by opening chat, and then click on one of the options.

If you click the place blocks option, a command will be inserted into chat. You can write the name of the block you want to place at the end of that command. Do not change the command itself. Press enter, and all selected locations will be filled.

This command also works in multiplayer, but be aware that only one player can select an area at a time.

After filling an area, the area remains selected until you select a new area. This means that if you accidentally fill the wrong block, you can run the command again but then with a different block (or `air` to remove the blocks). If you want the particles to disappear, click the deselect locations option. (If the list of options has scrolled out of your chat window, you can run `/function floodfill:options` to show it again.)

### List of functions

* `floodfill:start`: Deselects any selected area and selects the one you're standing in.
* `floodfill:options`: Shows you a list of options after selecting an area.
* `floodfill:deselect`: Deselects the currently selected area.
* `floodfill:info`: Displays some info about this datapack.
* `floodfill:uninstall`: Deselects everyone's selected areas and uninstalls the datapack. Note: make sure to also disable the datapack with the command `/datapack disable "file/Floodfill.zip"`!

Note: you may notice there are also some other functions that start with `floodfill_internal` in the name. Please *do not* use those functions. They are there for internal use only.

## Installation
You can [download this datapack from GitHub](https://github.com/JochCool/Floodfill/releases/latest/download/Floodfill.zip).

If you want to add it to a new world, then in the world creation screen, click the Data Packs button, and drag the ZIP file you downloaded onto Minecraft.

If you want to add it to an existing world, select it in the world selection screen, click Edit and then click Open World Folder. In this folder, create a new folder called `datapacks` (all lowercase). Place the ZIP file you downloaded into that folder.

Note: Installing this will automatically turn off feedback from commands, because all those feedback messages get annoying when using this datapack. However, this also affects other commands, so if you want to turn it on again, type this command in chat: `/gamerule sendCommandFeedback false`.

## Feedback
If you have found a bug, if you have a feature request, if you have a question or any other kind of feedback, please feel free to contact me! The best way is to create [an issue of GitHub](https://github.com/JochCool/Floodfill/issues), but you can also join [my Discord server](https://discord.gg/czVUWeg) or contact me on other platforms like [Twitter](https://twitter.com/JochCool) or [Reddit](https://www.reddit.com/message/compose?to=JochCool) (my username is JochCool everywhere). Thank you! ♥

## License
This datapack has been published under a [Creative Commons Attribution-ShareAlike (CC-BY-SA) license](https://creativecommons.org/licenses/by-sa/4.0). This means you can use and adapt my code, as long as you credit me and publish it under the same license. Full legal text is [here](https://creativecommons.org/licenses/by-sa/4.0/legalcode).
