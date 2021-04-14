tellraw @a "Reloaded"


# Objectives
scoreboard objectives add tf.reload dummy
scoreboard objectives add tf.cooldown dummy
scoreboard objectives add tf.wait dummy
scoreboard objectives add tf.clipSize dummy
scoreboard objectives add tf.clip dummy
scoreboard objectives add tf.ammo dummy
scoreboard objectives add tf.maxAmmo dummy
scoreboard objectives add tf.slot dummy

scoreboard objectives add tf.health dummy
scoreboard objectives add tf.maxHealth dummy
scoreboard objectives add tf.actHealth health
scoreboard objectives add tf.respawnTimer dummy
scoreboard objectives add tf.regeneration dummy
scoreboard objectives add tf.dmgGlobal dummy
scoreboard objectives add tf.dmgHitscan dummy
scoreboard objectives add tf.dmgExplosive dummy
scoreboard objectives add tf.dmgFire dummy
scoreboard objectives add tf.dmgMelee dummy
scoreboard objectives add tf.timeSinceDmg minecraft.custom:minecraft.play_one_minute

scoreboard objectives add tf.proj.damage dummy
scoreboard objectives add tf.proj.life dummy
scoreboard objectives add tf.proj.ID dummy

scoreboard objectives add tf.class dummy
scoreboard objectives add tf.team dummy
scoreboard objectives add tf.score dummy
scoreboard objectives setdisplay list tf.score

scoreboard objectives add tf.damage minecraft.custom:minecraft.damage_resisted
scoreboard objectives add tf.shoot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add tf.shoot2 minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add tf.plyTimer minecraft.custom:minecraft.play_one_minute
scoreboard objectives add tf.hunger food
scoreboard objectives add tf.fall dummy
scoreboard objectives add tf.rclRcvry dummy
scoreboard objectives add tf.value dummy
scoreboard objectives add tf.ID dummy
scoreboard objectives add tf.yRot dummy

## Scout
scoreboard objectives add tf.dblJmp dummy
scoreboard objectives add tf.levitationTmr dummy
scoreboard objectives add tf.dblJmpMax dummy

## Medic
scoreboard objectives add tf.ubercharge dummy
scoreboard objectives add tf.linkedID dummy
scoreboard objectives add tf.disconnectTmr dummy

## Spy
scoreboard objectives add tf.cloak dummy
scoreboard objectives add tf.blink dummy
scoreboard objectives add tf.disguise dummy
scoreboard objectives add tf.disguiseChce trigger
scoreboard objectives add tf.disguiseTmr dummy


# Constants
scoreboard players set #-1 tf.value -1
scoreboard players set #2 tf.value 2
scoreboard players set #4 tf.value 4
scoreboard players set #5 tf.value 5
scoreboard players set #6 tf.value 6
scoreboard players set #7 tf.value 7
scoreboard players set #10 tf.value 10
scoreboard players set #15 tf.value 15
scoreboard players set #20 tf.value 20
scoreboard players set #40 tf.value 40
scoreboard players set #50 tf.value 50
scoreboard players set #60 tf.value 60
scoreboard players set #100 tf.value 100
scoreboard players set #1000 tf.value 1000
scoreboard players set #1425 tf.value 1425
scoreboard players set #100000 tf.value 100000

scoreboard players set #unflinchSpd tf.value 90
scoreboard players set #maxFalloffDist tf.value 39


# Teams
team add tf.blu "BLU"
team add tf.red "RED"

team modify tf.blu collisionRule pushOtherTeams
team modify tf.blu color aqua
team modify tf.blu nametagVisibility never
team modify tf.blu seeFriendlyInvisibles false
team modify tf.blu friendlyFire false

team modify tf.red collisionRule pushOtherTeams
team modify tf.red color red
team modify tf.red nametagVisibility never
team modify tf.red seeFriendlyInvisibles false
team modify tf.red friendlyFire false


# Gamerules
gamerule showDeathMessages false
gamerule fallDamage false


# Player IDs
scoreboard players set @a tf.ID 0
scoreboard players set #count tf.value 1
function tf2:set_player_ids


# Sign for JSON manipulations
forceload add 0 0
setblock 0 255 0 oak_sign


# Chest for item manipulations
setblock 0 0 0 chest{Lock:"gyhroéivuoebveçouié&_fçvàeaygzurf"}
