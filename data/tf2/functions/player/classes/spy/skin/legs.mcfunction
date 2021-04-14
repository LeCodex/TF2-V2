item entity @s[scores={tf.disguiseTmr=..29},team=tf.blu] armor.legs replace leather_leggings{display:{color:3847130},AttributeModifiers:[]}
item entity @s[scores={tf.disguiseTmr=..29},team=tf.red] armor.legs replace leather_leggings{display:{color:11546150},AttributeModifiers:[]}

execute if score @s tf.disguiseTmr matches 30.. run function tf2:player/classes/spy/disguise/legs
