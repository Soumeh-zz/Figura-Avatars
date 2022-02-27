# Figura Avatars

A collection of Minecraft skins / Figura avatars, based on video game characters.

# Packs

- [Darkest Dungeon](avatars/darkest_dungeon/README.md)
- [Inscryption](avatars/inscryption/README.md)
- [Misc.](avatars/misc/README.md)

# To-Do

- Shared Script Code:
  - Find some way to import common code for each hero's `script.lua` file.
  - Note: i saw this somewhere i just can't find it again.
- Easier Item Replacements:
  - Preferably load custom models from individual files but Figura doesn't like the use of more than 1 file per type.
  - Render the custom models efficiently, i may be dumb, but just unhiding cubes though the `render()` function, which fires every tick, seems overkill. 
  - Optionally, a better system that recognizes when the player's other hand is empty and can display a 2 handed animation.