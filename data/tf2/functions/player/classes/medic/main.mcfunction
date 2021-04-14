# Armor and Head
function tf2:player/classes/medic/skin/main


# Medigun
## Start Healing
execute if score @s tf.shoot matches 1.. if data entity @s {SelectedItem:{tag:{tfTags:{flags:["tf.medigun"]}}}} run function tf2:player/classes/medic/medigun/start

## Functionnality
execute if score @s tf.linkedID matches 1.. run function tf2:player/classes/medic/medigun/main

## UI
scoreboard players operation #ubercharge tf.value = @s tf.ubercharge
scoreboard players operation #ubercharge tf.value /= #100000 tf.value

execute if data entity @s {SelectedItem:{tag:{tfTags:{flags:["tf.medigun"]}}}} run data merge storage tf:ui {Text2:'{"text":" | ","extra":[{"text":"Übercharge: ","bold":true},{"score":{"name":"#ubercharge","objective":"tf.value"}},{"text":"%"}]}'}


# Ubercharge
## Activation
execute if data entity @s Inventory[{Slot:-106b,tag:{tfTags:{flags:["tf.medigun"]}}}] if score @s tf.ubercharge matches 10000000.. run function tf2:player/classes/medic/ubercharge/activate

## Functionnality
execute if entity @s[tag=tf.ubercharge.active] run function tf2:player/classes/medic/ubercharge/main


# Cleaning
tag @a[tag=tf.patient] remove tf.patient


# Display
title @s actionbar ["", {"text":"Health: ","bold":true},{"storage":"tf:ui","nbt":"Text1","interpret":true},{"storage":"tf:ui","nbt":"Text2","interpret":true}]
