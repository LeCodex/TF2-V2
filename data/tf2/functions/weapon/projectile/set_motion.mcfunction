scoreboard players operation @s tf.proj.ID = #projectileCounter tf.value
function utility:set_unit_motion

execute if data entity @p[tag=tf.current] {SelectedItem:{tag:{tfTags:{projectileTags:["tf.projectile.noGravity"]}}}} run data merge entity @s {NoGravity:true}
execute if data entity @p[tag=tf.current] SelectedItem.tag.tfTags.projectileItem run data modify entity @s Item.id set from entity @p[tag=tf.current] SelectedItem.tag.tfTags.projectileItem
