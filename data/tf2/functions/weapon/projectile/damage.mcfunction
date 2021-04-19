# Damage
scoreboard players operation #damage tf.value = @s tf.proj.damage

# Falloff/Rampup
scoreboard players operation #dist tf.value = @s tf.proj.dist
function tf2:weapon/falloff

# Actual damage
execute as @e[tag=tf.projectile.hit] at @s run function tf2:player/health/damage

# Additional effects post-damage
execute if entity @s[tag=tf.projectile.explosive] run function tf2:weapon/projectile/effects/explosive
