item replace entity @s[scores={tf.disguiseTmr=..19},team=tf.blu] armor.chest with leather_chestplate{display:{color:3847130},AttributeModifiers:[]}
item replace entity @s[scores={tf.disguiseTmr=..19},team=tf.red] armor.chest with leather_chestplate{display:{color:11546150},AttributeModifiers:[]}

execute if score @s tf.disguiseTmr matches 20.. run function tf2:player/classes/spy/disguise/chest
