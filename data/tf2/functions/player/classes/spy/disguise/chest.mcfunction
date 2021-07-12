execute if score @s tf.disguise matches 1 run function tf2:player/classes/scout/skin/chest
execute if score @s tf.disguise matches 2 run function tf2:player/classes/soldier/skin/chest
execute if score @s tf.disguise matches 3 run function tf2:player/classes/pyro/skin/chest
execute if score @s tf.disguise matches 4 run function tf2:player/classes/demoman/skin/chest
execute if score @s tf.disguise matches 5 run function tf2:player/classes/heavy/skin/chest
execute if score @s tf.disguise matches 6 run function tf2:player/classes/engineer/skin/chest
execute if score @s tf.disguise matches 7 run function tf2:player/classes/medic/skin/chest
execute if score @s tf.disguise matches 8 run function tf2:player/classes/sniper/skin/chest

item replace entity @s[scores={tf.disguise=9},team=tf.red] armor.chest with leather_chestplate{display:{color:3847130},AttributeModifiers:[]}
item replace entity @s[scores={tf.disguise=9},team=tf.blu] armor.chest with leather_chestplate{display:{color:11546150},AttributeModifiers:[]}
