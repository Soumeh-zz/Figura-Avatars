# Figura Darkest Dungeon Skins

>N oticably very W.I.P.

The old road will take you to hell, but in that gaping abyss we will find our redemption.

## Crusader
A mighty sword-arm anchored by a holy purpose. A zealous warrior.	

![Sword n Scroll](https://media.discordapp.net/attachments/398864696989450259/944686846988943410/unknown.png)
![Scroll](https://media.discordapp.net/attachments/398864696989450259/944686847332855898/unknown.png)
![Banner](https://media.discordapp.net/attachments/398864696989450259/944686847546769429/unknown.png)

## To-Do

- Shared Script Code:
  - Find some way to import common code for each hero's `script.lua` file.
  - Note: i saw this somewhere i just can't find it again.
- Easier Item Replacements:
  - Preferably load custom models from individual files but Figura doesn't like the use of more than 1 file per type.
  - Render the custom models efficiently, i may be dumb, but just unhiding cubes though the `render()` function, which fires every tick, seems overkill. 
  - Optionally, a better system that recognizes when the player's other hand is empty and can display a 2 handed animation.
- Affliction System:
  - Add a red or white outline to the base model.
  - Switchable using the Figura action wheel.