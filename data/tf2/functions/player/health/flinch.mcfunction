tp @s ~ ~ ~ ~ ~-.1

scoreboard players remove #flinch tf.value 1
execute if score #flinch tf.value matches 1.. at @s run function tf2:flinch
