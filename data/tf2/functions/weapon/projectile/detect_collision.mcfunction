scoreboard players operation #target tf.value = @s tf.proj.ID
execute as @e[tag=tf.projectile] if score @s tf.proj.ID = #target tf.value run tag @s add tf.matching
execute unless entity @e[tag=tf.matching] run function tf2:weapon/projectile/end
tag @e[tag=tf.matching] remove tf.matching
