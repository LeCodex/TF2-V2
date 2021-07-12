execute if score @s tf.disguise matches 1 run function tf2:player/classes/scout/skin/legs
execute if score @s tf.disguise matches 2 run function tf2:player/classes/soldier/skin/legs
execute if score @s tf.disguise matches 3 run function tf2:player/classes/pyro/skin/legs
execute if score @s tf.disguise matches 4 run function tf2:player/classes/demoman/skin/legs
execute if score @s tf.disguise matches 5 run function tf2:player/classes/heavy/skin/legs
execute if score @s tf.disguise matches 6 run function tf2:player/classes/engineer/skin/legs
execute if score @s tf.disguise matches 7 run function tf2:player/classes/medic/skin/legs
execute if score @s tf.disguise matches 8 run function tf2:player/classes/sniper/skin/legs

item replace entity @s[scores={tf.disguise=9},team=tf.red] armor.legs with leather_leggings{display:{color:3847130},AttributeModifiers:[]}
item replace entity @s[scores={tf.disguise=9},team=tf.blu] armor.legs with leather_leggings{display:{color:11546150},AttributeModifiers:[]}
