scoreboard players operation #target tf.value = @s tf.ID
execute as @a[team=tf.red] if score @s tf.ID = #target tf.value run particle dust 1 0 0 .5
execute as @a[team=tf.blu] if score @s tf.ID = #target tf.value run particle dust 0 1 1 .5

execute if score @s tf.proj.life matches -1 run function tf2:weapon/projectile/detect_collision
execute if score @s tf.proj.life matches 0.. run function tf2:weapon/projectile/tick_down
