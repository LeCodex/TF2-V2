scoreboard players operation #damage tf.value = @s tf.proj.damage
execute as @e[tag=tf.projectile.hit] at @s run function tf2:player/health/damage

execute if entity @s[tag=tf.projectile.explosive] run function tf2:weapon/projectile/effects/explosive
