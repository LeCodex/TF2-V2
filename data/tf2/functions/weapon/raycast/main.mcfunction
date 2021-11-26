scoreboard players add #dist tf.value 1
tag @e[tag=tf.raycast.hit] remove tf.raycast.hit

# particle dust 1 0 0 1

execute positioned ~ ~-1.5 ~ as @a[distance=...5,tag=!tf.shooter] run function tf2:weapon/raycast/hit
execute positioned ~ ~-.5 ~ as @a[distance=...5,tag=!tf.shooter] run function tf2:weapon/raycast/hit
execute unless block ~ ~ ~ #air_like run function tf2:weapon/raycast/miss
execute if score #dist tf.value = #maxDist tf.value run function tf2:weapon/raycast/miss
execute unless entity @e[tag=tf.raycast.miss] unless entity @a[tag=tf.raycast.hit] positioned ^ ^ ^.5 run function tf2:weapon/raycast/main
