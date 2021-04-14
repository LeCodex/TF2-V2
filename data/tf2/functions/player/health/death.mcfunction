scoreboard players operation @s tf.health = @s tf.maxHealth
scoreboard players set @s tf.rclRcvry 0
scoreboard players set @s tf.respawnTimer 100
gamemode spectator

playsound minecraft:entity.player.big_fall player @a ~ ~ ~ 2 1

scoreboard players add @a[tag=tf.shooter] tf.score 1
execute unless entity @a[tag=tf.shooter] run scoreboard players remove @s tf.score 1

execute if entity @a[tag=tf.shooter] run tellraw @a ["",{"selector":"@a[tag=tf.shooter]"},{"entity":"@p[tag=shooter]","nbt":"SelectedItem.tag.tfTags.killIcon","color":"dark_gray"},{"selector":"@s"}]
execute unless entity @a[tag=tf.shooter] run tellraw @a ["",{"text":"☠ ","color":"dark_gray"},{"selector":"@s"}," fell to a clumsy, painful death"]
