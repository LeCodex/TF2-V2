# Allow picking up health packs
tag @s add tf.canPickupHealth

# Passive Regeneration
scoreboard players operation #regenTimer tf.value = @s tf.plyTimer
scoreboard players operation #regenTimer tf.value %= #20 tf.value
execute if score #regenTimer tf.value matches 0 run function tf2:player/health/regeneration
