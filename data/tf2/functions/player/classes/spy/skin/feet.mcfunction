item replace entity @s[scores={tf.disguiseTmr=..39},team=tf.blu] armor.feet with leather_boots{display:{color:3847130},AttributeModifiers:[]}
item replace entity @s[scores={tf.disguiseTmr=..39},team=tf.red] armor.feet with leather_boots{display:{color:11546150},AttributeModifiers:[]}

execute if score @s tf.disguiseTmr matches 40 run function tf2:player/classes/spy/disguise/feet
