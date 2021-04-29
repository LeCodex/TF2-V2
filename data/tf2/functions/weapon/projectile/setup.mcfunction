scoreboard players operation @s tf.proj.ID = #projectileCounter tf.value
execute store result score @s tf.proj.damage run data get entity @p[tag=tf.current] SelectedItem.tag.tfTags.damage

scoreboard players set @s tf.proj.life -1
scoreboard players set @s tf.proj.dist 0

data modify entity @s Tags set from entity @p[tag=tf.current] SelectedItem.tag.tfTags.projectileTags
tag @s add tf.projectile_marker
tag @s add tf.setID
