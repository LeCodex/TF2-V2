# Raycast
scoreboard players set #maxDist tf.value 500
function tf2:weapon/raycast/start

# Damage or miss
execute as @a[tag=tf.raycast.hit] at @s run function tf2:player/weapon/histcan/damage
execute at @e[type=marker,tag=tf.raycast.miss] run particle dust 0 0 0 .5 ~ ~ ~ 0 0 0 0 1 force

# Cleaning
kill @e[tag=tf.raycast.miss]
