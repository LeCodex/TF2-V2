scoreboard players operation @s tf.proj.ID = #projectileCounter tf.value
execute store result score @s tf.proj.damage run data get entity @p[tag=tf.current] SelectedItem.tag.tfTags.damage

scoreboard players set @s tf.proj.life -1
