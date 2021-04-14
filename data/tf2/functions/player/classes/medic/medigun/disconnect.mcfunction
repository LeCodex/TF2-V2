scoreboard players set @s tf.linkedID 0
playsound minecraft:block.beacon.deactivate player @a ~ ~1 ~ .5 2
stopsound @a[distance=..3] player minecraft:block.beacon.ambient

attribute @s generic.movement_speed base set 0.1431
