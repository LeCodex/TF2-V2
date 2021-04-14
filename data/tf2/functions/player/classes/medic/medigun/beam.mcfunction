execute if entity @s[team=tf.blu] run particle minecraft:dust 0 1 1 .2 ~ ~ ~ 0 0 0 .01 1
execute if entity @s[team=tf.red] run particle minecraft:dust 1 0 0 .2 ~ ~ ~ 0 0 0 .01 1

execute unless block ~ ~ ~ #air_like run tag @s add tf.hit_wall
execute unless entity @a[tag=tf.patient,distance=..2] positioned ^ ^ ^.3 run function tf2:player/classes/medic/medigun/beam
