# Health transfer
# scoreboard players set #diff tf.value 20
# scoreboard players operation #diff tf.value -= @s tf.actHealth
# scoreboard players operation #diff tf.value *= #5 tf.value
# scoreboard players operation @s tf.health -= #diff tf.value


# Keep actual health at 20
# execute if score #diff tf.value matches 1.. run effect give @s instant_health 1 10 true


# Detect damage
scoreboard players operation #damage tf.value = @s tf.damage
scoreboard players operation #damage tf.value /= #2 tf.value
scoreboard players operation #damage tf.value *= #100 tf.value
execute if score @s tf.damage matches 1.. run function tf2:player/health/damage
scoreboard players set @s tf.damage 0


# Fall damage
execute if data entity @s {FallDistance:0.0f} if score @s tf.fall matches 1.. run function tf2:player/health/fall_damage
