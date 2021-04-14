scoreboard players operation #maxOverheal tf.value = @s tf.maxHealth
scoreboard players operation #maxOverheal tf.value *= #15 tf.value
scoreboard players operation #maxOverheal tf.value /= #10 tf.value

execute if score @s tf.health < #maxOverheal tf.value run scoreboard players add @s tf.health 120

tag @s add tf.patient
