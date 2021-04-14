tp @s ~ ~ ~ ~ ~.1

scoreboard players remove #unflinch tf.value 1
execute if score #unflinch tf.value matches 1.. at @s run function tf2:unflinch
