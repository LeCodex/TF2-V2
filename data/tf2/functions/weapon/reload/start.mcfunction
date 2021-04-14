execute store result score @s tf.wait run data get entity @s SelectedItem.tag.tfTags.reload.first
execute if entity @s[tag=tf.didFirstReload] store result score @s tf.wait run data get entity @s SelectedItem.tag.tfTags.reload.consecutive
playsound minecraft:item.crossbow.loading_start player @a ~ ~1 ~
tag @s add tf.didFirstReload
tag @s add tf.reloading
