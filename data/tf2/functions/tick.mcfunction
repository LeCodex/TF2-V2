# Players
execute as @a at @s run function tf2:player/main


# Projectiles
execute as @e[tag=tf.projectile_marker] at @s run function tf2:weapon/projectile/main

## Reset projectile counter
execute unless entity @e[tag=tf.projectile_marker] run scoreboard players set #projectileCounter tf.value 0


# Anti-Item Drop
execute as @e[type=item,tag=!tf.item.processed] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item,tag=!tf.item.processed] run data modify entity @s PickupDelay set value 0
tag @e[type=item] add tf.item.processed


# Cleaning
kill @e[tag=tf.remove]
kill @e[type=arrow,nbt={inGround:1b}]
