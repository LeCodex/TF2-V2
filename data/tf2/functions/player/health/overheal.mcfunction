# Decay
scoreboard players remove @s tf.health 10


#Particles
execute if entity @s[team=tf.blu,scores={tf.disguise=0,tf.blink=0}] run particle entity_effect ~ ~1 ~ 0 1 1 1 0 force
execute if entity @s[team=tf.red,scores={tf.disguise=0,tf.blink=0}] run particle entity_effect ~ ~1 ~ 1 0 0 1 0 force
execute if entity @s[team=tf.blu,scores={tf.disguise=1..,tf.blink=0}] run particle entity_effect ~ ~1 ~ 1 0 0 1 0 force
execute if entity @s[team=tf.red,scores={tf.disguise=1..,tf.blink=0}] run particle entity_effect ~ ~1 ~ 0 1 1 1 0 force
