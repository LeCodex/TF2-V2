# Setup angle
execute rotated as @p run tp @s ~ ~ ~ ~ ~

execute store result score #angleY tf.value run data get entity @p SelectedItem.tag.tfTags.angles[0][0] 1000
execute store result score #angleX tf.value run data get entity @p SelectedItem.tag.tfTags.angles[0][1] 1000

execute store result score #rotY tf.value run data get entity @p Rotation[0] 1000
execute store result score #rotX tf.value run data get entity @p Rotation[1] 1000

scoreboard players operation #rotY tf.value += #angleY tf.value
scoreboard players operation #rotX tf.value += #angleX tf.value

execute store result entity @s Rotation[0] float .001 run scoreboard players get #rotY tf.value
execute store result entity @s Rotation[1] float .001 run scoreboard players get #rotX tf.value

tellraw @p {"entity":"@s","nbt":"Rotation"}

execute rotated as @s run tp @s ~ ~ ~ ~ ~
