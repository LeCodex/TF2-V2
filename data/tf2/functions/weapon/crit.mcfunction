scoreboard players set #ratio tf.value 300

summon item ~ ~1.5 ~ {Tags:["tf.item.processed"],PickupDelay:100,Age:5990,CustomNameVisible:1b,CustomName:'{"text":"CRITICAL HIT!","color":"green"}',Item:{id:"minecraft:stone_button",Count:1b},Motion:[0.0,0.2,0.0],NoGravity:true}
playsound minecraft:entity.player.attack.crit player @a ~ ~1 ~
