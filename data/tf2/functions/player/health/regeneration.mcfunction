# Rate calculation
scoreboard players operation #rate tf.value = @s tf.timeSinceDmg
scoreboard players operation #rate tf.value /= #4 tf.value
scoreboard players add #rate tf.value 50
execute if score #rate tf.value matches 101.. run scoreboard players set #rate tf.value 100


# Regeneration
scoreboard players operation #amount tf.value = @s tf.regeneration
scoreboard players operation #amount tf.value *= #rate tf.value
scoreboard players operation #amount tf.value /= #100 tf.value

scoreboard players operation #cap tf.value = @s tf.maxHealth
scoreboard players operation #cap tf.value -= @s tf.health
execute if score #amount tf.value > #cap tf.value run scoreboard players operation #amount tf.value = #cap tf.value

scoreboard players operation @s tf.health += #amount tf.value


# Indicator
scoreboard players operation #indicator tf.value = #amount tf.value
scoreboard players operation #indicator tf.value /= #100 tf.value

execute if score #indicator tf.value matches 1.. run function tf2:player/health/damage_indicator
