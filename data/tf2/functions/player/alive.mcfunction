# Damage
## Flinch, was disabeld because constant teleports suck
# scoreboard players operation #unflinch tf.value = @s tf.rclRcvry
# scoreboard players operation @s tf.rclRcvry *= #unflinchSpd tf.value
# scoreboard players operation @s tf.rclRcvry /= #100 tf.value
# scoreboard players operation #unflinch tf.value -= @s tf.rclRcvry
# execute if score #unflinch tf.value matches 1.. run function tf2:player/health/unflinch


# Jump Height
effect give @s jump_boost 1 0 true


# Display Start
scoreboard players operation #health tf.value = @s tf.health
scoreboard players operation #health tf.value /= #100 tf.value

scoreboard players operation #percent tf.value = @s tf.health
scoreboard players operation #percent tf.value *= #100 tf.value
scoreboard players operation #percent tf.value /= @s tf.maxHealth

execute if score #percent tf.value matches 51.. run data merge storage tf:ui {Text1:'{"score":{"name":"#health","objective":"tf.value"},"color":"green"}'}
execute if score #percent tf.value matches 26..50 run data merge storage tf:ui {Text1:'{"score":{"name":"#health","objective":"tf.value"},"color":"yellow"}'}
execute if score #percent tf.value matches ..25 run data merge storage tf:ui {Text1:'{"score":{"name":"#health","objective":"tf.value"},"color":"red"}'}
execute if score @s tf.health > @s tf.maxHealth run data merge storage tf:ui {Text1:'{"score":{"name":"#health","objective":"tf.value"},"color":"aqua"}'}


# Weapon
## Reset UI
data merge storage tf:ui {Text2:'{"text":""}'}

## Merge all objectives
scoreboard players operation @s tf.shoot += @s tf.shoot2

## Reset on slot change
execute store result score #current tf.value run data get entity @s SelectedItemSlot
execute unless score #current tf.value = @s tf.slot run function tf2:weapon/reset

## Functionnality
scoreboard players remove @s[scores={tf.wait=1..}] tf.wait 1
execute if data entity @s {SelectedItem:{tag:{tfTags:{flags:["tf.weapon"]}}}} if score @s tf.blink matches 0 run function tf2:weapon/main


# Class functions
execute if score @s tf.class matches 1 run function tf2:player/classes/scout/main
execute if score @s tf.class matches 2 run function tf2:player/classes/soldier/main
execute if score @s tf.class matches 3 run function tf2:player/classes/pyro/main
execute if score @s tf.class matches 4 run function tf2:player/classes/demoman/main
execute if score @s tf.class matches 5 run function tf2:player/classes/heavy/main
execute if score @s tf.class matches 6 run function tf2:player/classes/engineer/main
execute if score @s tf.class matches 7 run function tf2:player/classes/medic/main
execute if score @s tf.class matches 8 run function tf2:player/classes/sniper/main
execute if score @s tf.class matches 9 run function tf2:player/classes/spy/main


# Return items in offhand to mainhand
execute if data entity @s Inventory[{Slot:-106b}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with minecraft:air 1


# Ubercharge
execute if entity @s[tag=tf.ubercharge.patient] run function tf2:player/classes/medic/ubercharge/patient


# Health
effect give @s resistance 1 10 true
execute if score @s tf.health matches 1.. run function tf2:player/health/main

## Death
execute if score @s tf.health matches ..0 run function tf2:player/health/death

## Passive Regeneration and allow picking up health packs
execute if score @s tf.health < @s tf.maxHealth run function tf2:player/health/damaged

## Overheal
execute if score @s tf.health > @s tf.maxHealth run function tf2:player/health/overheal


# Levitation decay used for (double) jumps
scoreboard players remove @s tf.levitationTmr 1
execute if score @s tf.levitationTmr matches ..0 run effect clear @s levitation
