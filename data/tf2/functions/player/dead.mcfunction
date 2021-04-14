scoreboard players remove @s tf.respawnTimer 1

scoreboard players operation #respawn tf.value = @s tf.respawnTimer
scoreboard players operation #respawn tf.value /= #20 tf.value
title @s[scores={tf.respawnTimer=41..}] actionbar ["","Respawn in ",{"score":{"objective":"tf.value","name":"#respawn"},"bold":true}," seconds"]
title @s[scores={tf.respawnTimer=21..40}] actionbar ["","Respawn in ",{"text":"1","bold":true}," second"]
title @s[scores={tf.respawnTimer=..20}] actionbar "Prepare to respawn"

execute if score @s tf.respawnTimer matches 0 run function tf2:player/respawn
