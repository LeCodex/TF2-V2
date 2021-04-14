scoreboard players set #maxDist tf.value 16
execute anchored eyes positioned ^ ^ ^ run function tf2:weapon/raycast/start

execute as @a[tag=tf.raycast.hit,scores={tf.blink=0}] if score @s tf.team = @p[tag=tf.current] tf.team run tag @s add tf.futurePatient
execute as @a[tag=tf.raycast.hit,scores={tf.blink=0}] if score @s tf.disguiseTmr matches 40 unless score @s tf.team = @p[tag=tf.current] tf.team run tag @s add tf.futurePatient

execute if entity @a[tag=tf.futurePatient] run function tf2:player/classes/medic/medigun/link
execute unless entity @e[tag=tf.futurePatient] if score @s tf.wait matches 0 run playsound block.note_block.hat ambient @s ~ ~ ~ 1 .5

scoreboard players set @s[scores={tf.wait=0}] tf.wait 12
