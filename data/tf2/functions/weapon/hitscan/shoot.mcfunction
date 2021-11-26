# execute store result score #length tf.value run data get entity @s SelectedItem.tag.tfTags.angles
# execute anchored eyes run summon marker ^ ^ ^ {Tags:["tf.raycast.origin"]}
# function tf2:weapon/hitscan/raycast_angles
# kill @e[tag=tf.raycast.origin]

execute if data entity @s {SelectedItem:{tag:{tfTags:{flags:["tf.spread.center"]}}}} run function tf2:weapon/hitscan/spread/center
execute if data entity @s {SelectedItem:{tag:{tfTags:{flags:["tf.spread.shotgun"]}}}} run function tf2:weapon/hitscan/spread/shotgun
