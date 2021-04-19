scoreboard players set #done tf.value 0

scoreboard players operation #target tf.value = @s tf.ID
execute positioned ~ ~-1.5 ~ as @e[distance=..1.5,tag=!tf.projectile_marker,sort=nearest,limit=1] unless score @s tf.ID = #target tf.value run function tf2:weapon/projectile/hit
execute positioned ~ ~-.5 ~ if score #done tf.value matches 0 as @e[distance=..1.5,tag=!tf.projectile_marker,sort=nearest,limit=1] unless score @s tf.ID = #target tf.value run function tf2:weapon/projectile/hit

execute if score #done tf.value matches 0 run function tf2:weapon/projectile/miss

execute as @a if score @s tf.ID = #target tf.value run tag @s add tf.shooter
data modify storage tf:ui KillIcon set value "🏹"

function tf2:weapon/projectile/damage

tag @e[tag=tf.projectile.hit] remove tf.projectile.hit
tag @a[tag=tf.shooter] remove tf.shooter

kill @s
