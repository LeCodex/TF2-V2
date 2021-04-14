scoreboard players operation @s tf.linkedID = @p[tag=tf.raycast.hit] tf.ID
scoreboard players set @s tf.disconnectTmr 20

execute if score @p[tag=tf.raycast.hit] tf.class matches 1 run attribute @s generic.movement_speed base set 0.1778

playsound minecraft:block.beacon.activate player @a ~ ~1 ~ .5 2
