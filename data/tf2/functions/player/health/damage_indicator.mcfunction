summon item ~ ~1.5 ~ {Tags:["new","tf.item.processed"],PickupDelay:100,Age:5990,CustomNameVisible:1b,CustomName:'{"text":"null"}',Item:{id:"minecraft:stone_button",Count:1b},Motion:[0.0,0.1,0.0],NoGravity:true}
execute if score #indicator tf.value matches ..0 run data merge block 0 255 0 {Text1:'["",{"score":{"name":"#indicator","objective":"tf.value"},"color":"red"}]'}
execute if score #indicator tf.value matches 1.. run data merge block 0 255 0 {Text1:'["",{"text":"+","color":"green"},{"score":{"name":"#indicator","objective":"tf.value"},"color":"green"}]'}
data modify entity @e[type=item,tag=new,limit=1] CustomName set from block 0 255 0 Text1
tag @e[type=item,tag=new] remove new
