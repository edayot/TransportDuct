# example:my_block/place

setblock ~ ~ ~ barrel

execute 
    align xyz 
    positioned ~.5 ~.5 ~.5
    summon item_display
    run function transportduct:place_block/place_entity:
        # Define the ioconfig
        data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig set value []
        data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {
            Slot:0b,
            mode: "input",
            allowed_side:{bottom:1b},
            filters:[
                {id:["minecraft:dirt"]}
            ]
        }
        tag @s add itemio.container # The required tag
        # tag @s add itemio.container.hopper # To make it work with hoppers
        function #itemio:calls/container/init