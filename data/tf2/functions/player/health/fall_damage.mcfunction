scoreboard players operation #damage tf.value = @s tf.fall
scoreboard players remove #damage tf.value 4
scoreboard players operation #damage tf.value *= #7 tf.value
scoreboard players operation #damage tf.value *= #100 tf.value

execute if score #damage tf.value matches 1.. run function tf2:player/health/damage
