execute if score @s tf.disguise matches 1 run function tf2:player/classes/scout/skin/feet
execute if score @s tf.disguise matches 2 run function tf2:player/classes/soldier/skin/feet
execute if score @s tf.disguise matches 3 run function tf2:player/classes/pyro/skin/feet
execute if score @s tf.disguise matches 4 run function tf2:player/classes/demoman/skin/feet
execute if score @s tf.disguise matches 5 run function tf2:player/classes/heavy/skin/feet
execute if score @s tf.disguise matches 6 run function tf2:player/classes/engineer/skin/feet
execute if score @s tf.disguise matches 7 run function tf2:player/classes/medic/skin/feet
execute if score @s tf.disguise matches 8 run function tf2:player/classes/sniper/skin/feet

item entity @s[scores={tf.disguise=9},team=tf.red] armor.feet replace leather_boots{display:{color:3847130},AttributeModifiers:[]}
item entity @s[scores={tf.disguise=9},team=tf.blu] armor.feet replace leather_boots{display:{color:11546150},AttributeModifiers:[]}
