execute anchored eyes run summon snowball ^ ^ ^ {Tags:["tf.setMotion","tf.projectile"],Motion:[0.0,0.0,0.0],Item:{id:"minecraft:arrow",Count:1},Passengers:[{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["tf.projectile_marker","tf.setID"]}]}

scoreboard players add #projectileCounter tf.value 1

scoreboard players set #Scale tf.value 943
scoreboard players set #InverseScale tf.value 1000
execute as @e[tag=tf.setID] at @s run function tf2:weapon/projectile/setup
execute as @e[tag=tf.setMotion] at @s rotated as @a[tag=tf.current] run function tf2:weapon/projectile/set_motion
