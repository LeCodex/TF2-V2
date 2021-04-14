execute if entity @s[tag=tf.reloading] run function tf2:weapon/reload/end
execute if entity @s[tag=!tf.reloading] if score @s tf.clip < @s tf.clipSize if score @s tf.ammo matches 1.. run function tf2:weapon/reload/start
