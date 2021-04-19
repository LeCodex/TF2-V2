# Reset
tag @s remove tf.reloading
tag @s remove tf.didFirstReload

# Sound
playsound minecraft:item.armor.equip_leather voice @s

# Transfer values
execute store result score @s tf.ammo run data get entity @s SelectedItem.tag.tfTags.ammo
execute store result score @s tf.maxAmmo run data get entity @s SelectedItem.tag.tfTags.maxAmmo
execute store result score @s tf.clip run data get entity @s SelectedItem.tag.tfTags.clip
execute store result score @s tf.clipSize run data get entity @s SelectedItem.tag.tfTags.clipSize
execute store result score @s tf.cooldown run data get entity @s SelectedItem.tag.tfTags.cooldown
execute store result score @s tf.wait run data get entity @s SelectedItem.tag.tfTags.deploy
# execute store result score @s tf.reload run data get entity @s SelectedItem.tag.tfTags.reload
