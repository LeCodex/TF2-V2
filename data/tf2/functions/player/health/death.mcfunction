scoreboard players operation @s tf.health = @s tf.maxHealth
scoreboard players set @s tf.rclRcvry 0
scoreboard players set @s tf.respawnTimer 100
gamemode spectator

playsound minecraft:entity.player.big_fall player @a ~ ~ ~ 2 1

scoreboard players operation #target tf.value = @s tf.ID
tag @s add tf.victim

scoreboard players add @a[tag=tf.shooter] tf.score 1
execute as @a[tag=tf.shooter] if score @s tf.ID = #target tf.value run scoreboard players remove @s tf.score 2
execute unless entity @a[tag=tf.shooter] run scoreboard players remove @s tf.score 1

execute unless entity @a[tag=tf.shooter] run tellraw @a ["",{"text":"☠ ","color":"white"},{"selector":"@s"}," fell to a clumsy, painful death"]
execute as @a[tag=tf.shooter] unless score @s tf.ID = #target tf.value run tellraw @a ["",{"selector":"@s"},{"text":" "},{"storage":"tf:ui","nbt":"KillIcon","color":"white"},{"text":" "},{"selector":"@e[tag=tf.victim]"}]
execute as @a[tag=tf.shooter] if score @s tf.ID = #target tf.value run tellraw @a ["",{"text":"☠ ","color":"white"},{"selector":"@s"}," bid farewell, cruel world!"]

tag @s remove tf.victim
