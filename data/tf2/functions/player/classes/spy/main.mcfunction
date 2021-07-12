# Disguise
## Enabling Objective
scoreboard players enable @s tf.disguiseChce
scoreboard players operation @s[scores={tf.disguiseChce=1..}] tf.disguise = @s tf.disguiseChce

## Disguise Smoke
execute as @e[tag=tf.disguise.smoke] if score @s tf.ID = @p[tag=tf.current] tf.ID run function tf2:player/classes/spy/disguise/marker

## (Un)Disguising
item replace entity @s[scores={tf.disguiseTmr=9}] armor.head with air
item replace entity @s[scores={tf.disguiseTmr=19}] armor.chest with air
item replace entity @s[scores={tf.disguiseTmr=29}] armor.legs with air
item replace entity @s[scores={tf.disguiseTmr=39}] armor.feet with air
execute if score @s tf.disguise matches 1.. if score @s tf.disguiseTmr matches 0 run function tf2:player/classes/spy/disguise/start
scoreboard players add @s[scores={tf.disguise=1..,tf.disguiseTmr=..39}] tf.disguiseTmr 1
scoreboard players set @s[scores={tf.disguise=0}] tf.disguiseTmr 0

## Speeds
execute if entity @s[scores={tf.disguiseTmr=40},tag=!tf.cloaked] run function tf2:player/classes/spy/disguise/speed
attribute @s[scores={tf.disguise=0}] generic.movement_speed base set 0.1431
attribute @s[tag=tf.cloaked] generic.movement_speed base set 0.1431

## Particles
### Disguise End
execute if score @s tf.disguiseTmr matches 39 run particle effect ~ ~1 ~ .25 .5 .25 5 60 force @s

### Teammates Recognition
execute as @a[tag=!tf.current] if score @s tf.team = @p[tag=tf.current] tf.team run tag @s add tf.see_particle
execute if score @s tf.disguise matches 1.. if score @s tf.blink matches 0 run particle effect ~ ~1 ~ .25 .5 .25 5 1 force @a[tag=tf.see_particle]
tag @a remove tf.see_particle

## Redisguising
execute if score @s tf.disguiseChce matches 1.. run function tf2:player/classes/spy/disguise/redisguise
scoreboard players set @s tf.disguiseChce 0


# Armor and Head
execute if score @s tf.blink matches 0 run function tf2:player/classes/spy/skin/main


# Cloak
## (De)Activating
execute if data entity @s[scores={tf.blink=0}] Inventory[{Slot:-106b}] run function tf2:player/classes/spy/cloak
execute if data entity @s[scores={tf.blink=1..}] Inventory[{Slot:-106b}] run function tf2:player/classes/spy/uncloak

## (De)Cloaking
scoreboard players add @s[tag=tf.cloaked,scores={tf.blink=..39}] tf.blink 2
scoreboard players remove @s[tag=!tf.cloaked,scores={tf.blink=1..}] tf.blink 1
item replace entity @s[scores={tf.blink=1..}] armor.chest with air
item replace entity @s[scores={tf.blink=1..}] armor.legs with air
item replace entity @s[scores={tf.blink=1..}] armor.feet with air

## Blinking
execute as @e[distance=..1.5] unless score @s tf.team = @p[tag=tf.current] tf.team run scoreboard players set @a[tag=tf.current,tag=tf.cloaked] tf.blink 20
item replace entity @s[scores={tf.blink=2..39},team=tf.red] armor.head with red_stained_glass
item replace entity @s[scores={tf.blink=2..39},team=tf.blu] armor.head with light_blue_stained_glass
item replace entity @s[scores={tf.blink=40}] armor.head with air
item replace entity @s[scores={tf.blink=1}] armor.head with air

## Cloak Amount Management
scoreboard players remove @s[tag=tf.cloaked] tf.cloak 3
execute if entity @s[tag=tf.cloaked,scores={tf.cloak=..0}] run function tf2:player/classes/spy/uncloak
scoreboard players add @s[tag=!tf.cloaked,scores={tf.cloak=..600}] tf.cloak 1

## 20% Cloak Damage Resistance
scoreboard players remove @s[scores={tf.blink=1..}] tf.dmgGlobal 20

## UI
execute if score @s tf.blink matches 0 run data merge storage tf:ui {"TextSpy1":'{"text":"Cloak: ","bold":true}'}
execute if score @s tf.blink matches 1..39 run data merge storage tf:ui {"TextSpy1":'{"text":"Cloak: ","bold":true,"color":"yellow"}'}
execute if score @s tf.blink matches 40 run data merge storage tf:ui {"TextSpy1":'{"text":"Cloak: ","bold":true,"color":"aqua"}'}

scoreboard players operation #cloak tf.value = @s tf.cloak
scoreboard players operation #cloak tf.value /= #6 tf.value


# Backstab
## Player detection
execute as @s[team=tf.red] at @s positioned ^ ^ ^2 run scoreboard players operation @s tf.yRot -= @e[limit=1,distance=..1.5,team=tf.blu] tf.yRot
execute as @s[team=tf.blu] at @s positioned ^ ^ ^2 run scoreboard players operation @s tf.yRot -= @e[limit=1,distance=..1.5,team=tf.red] tf.yRot
execute as @s[team=tf.red] at @s positioned ^ ^ ^2 unless entity @e[limit=1,distance=..1.5,team=tf.blu] run scoreboard players set @s tf.yRot 400
execute as @s[team=tf.blu] at @s positioned ^ ^ ^2 unless entity @e[limit=1,distance=..1.5,team=tf.red] run scoreboard players set @s tf.yRot 400

## Strength
effect give @s[scores={tf.yRot=-30..30,tf.blink=0},nbt={SelectedItem:{tag:{tfTags:{flags:["tf.backstab"]}}}}] minecraft:strength 1 100
effect give @s[scores={tf.yRot=330..390,tf.blink=0},nbt={SelectedItem:{tag:{tfTags:{flags:["tf.backstab"]}}}}] minecraft:strength 1 100
effect give @s[scores={tf.yRot=-390..-330,tf.blink=0},nbt={SelectedItem:{tag:{tfTags:{flags:["tf.backstab"]}}}}] minecraft:strength 1 100
execute unless score @s tf.yRot matches -390..-330 unless score @s tf.yRot matches -30..30 unless score @s tf.yRot matches 330..390 run effect clear @s minecraft:strength
effect clear @s[nbt=!{SelectedItem:{tag:{tfTags:{flags:["tf.backstab"]}}}}] minecraft:strength


# Display
title @s actionbar ["", {"text":"Health: ","bold":true},{"storage":"tf:ui","nbt":"Text1","interpret":true},{"storage":"tf:ui","nbt":"Text2","interpret":true},{"text":" | "},{"storage":"tf:ui","nbt":"TextSpy1","interpret":true},{"score":{"name":"#cloak","objective":"tf.value"}},{"text":"%"}]
