# Armor and Head
function tf2:player/classes/scout/skin/main


# Double Jump
execute if score @s tf.dblJmp matches 1.. if data entity @s Inventory[{Slot:-106b}] if data entity @s {OnGround:0b} run function tf2:player/classes/scout/double_jump
execute if data entity @s {OnGround:1b} run scoreboard players operation @s tf.dblJmp = @s tf.dblJmpMax


# Display
title @s actionbar ["", {"text":"Health: ","bold":true},{"storage":"tf:ui","nbt":"Text1","interpret":true},{"storage":"tf:ui","nbt":"Text2","interpret":true}]
