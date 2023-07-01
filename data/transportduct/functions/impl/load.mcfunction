
execute as @a[tag=convention.debug] run function transportduct:impl/print_version
advancement revoke @a only transportduct:click_servo

#Item cable
data modify storage transportduct:main ItemsNBT.item_cable set value {id:"minecraft:furnace",Count:1b						,tag:{CustomModelData:1430116,ctc:{id:"item_cable",from:"airdox_:transportduct",traits:{"block":1b,"cable":1b}}                               ,BlockEntityTag:{Items:[{id:"minecraft:stone",Count:1b,Slot:0b,tag:{smithed:{block:{id:"transportduct:item_cable"}}}}]}																				,display:{Name:'{"translate":"transportduct.item_cable","color":"white","italic":false}'}}}
#Copper Servo Insert
data modify storage transportduct:main ItemsNBT.servo_insert set value {id:"minecraft:glow_item_frame",Count:1b			,tag:{CustomModelData:1430117,ctc:{id:"servo_insert",from:"airdox_:transportduct",traits:{"item":1b,"servo":1b,"metal/copper":1b}},EntityTag:{Invulnerable:0b,Invisible:1b,Fixed:0b,Silent:1b,Tags:["transportduct.summoned","transportduct.servo","itemio.servo.insert"],Item:{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:1430117}}}                                                                                     ,display:{Name:'{"translate":"transportduct.servo_insert","color":"white","italic":false}'}}}
#Copper Servo Extract
data modify storage transportduct:main ItemsNBT.servo_extract set value {id:"minecraft:glow_item_frame",Count:1b			,tag:{CustomModelData:1430119,ctc:{id:"servo_extract",from:"airdox_:transportduct",traits:{"item":1b,"servo":1b,"metal/copper":1b}},EntityTag:{Invulnerable:0b,Invisible:1b,Fixed:0b,Silent:1b,Tags:["transportduct.summoned","transportduct.servo","itemio.servo.extract"],Item:{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:1430119}}}                                                                                     ,display:{Name:'{"translate":"transportduct.servo_extract","color":"white","italic":false}'}}}

#Wrench
data modify storage transportduct:main ItemsNBT.wrench set value {id:"minecraft:warped_fungus_on_a_stick",Count:1b						,tag:{CustomModelData:1430117,ctc:{id:"wrench",from:"airdox_:transportduct",traits:{"item":1b}}																				,display:{Lore:['{"translate":"transportduct.name","color":"blue","italic":false}'],Name:'{"translate":"transportduct.wrench","color":"white","italic":false}'}}}
#ID Filter
data modify storage transportduct:main ItemsNBT.id_filter set value {id:"minecraft:jigsaw",Count:1b						,tag:{CustomModelData:1430121,ctc:{id:"id_filter",from:"airdox_:transportduct",traits:{"item":1b}},transportduct:{}																				,display:{Lore:['{"translate":"transportduct.name","color":"blue","italic":false}'],Name:'{"translate":"transportduct.id_filter","color":"white","italic":false}'}}}



scoreboard objectives add transportduct.math dummy

schedule function transportduct:impl/tick 1t replace