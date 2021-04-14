# Damage reduction
scoreboard players operation #damage tf.value *= @s tf.dmgGlobal
scoreboard players operation #damage tf.value /= #100 tf.value


# Damamge application
execute if score #damage tf.value matches 100.. run function tf2:player/health/damage_effect
