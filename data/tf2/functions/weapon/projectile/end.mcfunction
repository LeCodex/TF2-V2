scoreboard players set #done tf.value 0

execute positioned ~ ~-1.5 ~ as @e[distance=..1.2,tag=!tf.projectile_marker,sort=nearest,limit=1] run function tf2:weapon/projectile/hit
execute positioned ~ ~-.5 ~ if score #done tf.value matches 0 as @e[distance=..1.2,tag=!tf.projectile_marker,sort=nearest,limit=1] run function tf2:weapon/projectile/hit

execute if score #done tf.value matches 0 run function tf2:weapon/projectile/miss

function tf2:weapon/projectile/damage

kill @s
