tag @s remove transportduct.summoned
tag @s add itemio.network
tag @s add itemio.servo
tag @s add global.ignore


scoreboard players set @s itemio.servo.stack_limit 1


data modify entity @s Item.tag.transportduct.destroyer set value 1b
data modify entity @s Item.tag.transportduct.destroyer_servo set value 1b

function #itemio:calls/servos/init





