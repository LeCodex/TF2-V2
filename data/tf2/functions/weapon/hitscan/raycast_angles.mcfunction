# Apply angles, then raycast
execute as @e[tag=tf.raycast.origin] at @s run function tf2:weapon/hitscan/setup_raycast


# Raycast
scoreboard players set #maxDist tf.value 500
execute at @e[tag=tf.raycast.origin,limit=1] run function tf2:weapon/raycast/start


# Damage or miss
execute as @a[tag=tf.raycast.hit] at @s run function tf2:player/weapon/histcan/damage
execute at @e[tag=tf.raycast.miss] run particle dust 0 0 0 .5


# Next angle
# tellraw @s {"entity":"@s","nbt":"SelectedItem.tag.tfTags.angles[0]"}

item replace block 0 0 0 container.0 from entity @s weapon.mainhand

data modify block 0 0 0 Items[{Slot:0b}].tag.tfTags.angles append from block 0 0 0 Items[{Slot:0b}].tag.tfTags.angles[0]
data remove block 0 0 0 Items[{Slot:0b}].tag.tfTags.angles[0]

item replace entity @s weapon.mainhand from block 0 0 0 container.0

scoreboard players remove #length tf.value 1
execute if score #length tf.value matches 1.. run function tf2:weapon/hitscan/raycast
