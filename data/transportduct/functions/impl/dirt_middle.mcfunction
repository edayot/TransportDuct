# example:my_block/place

setblock ~ ~ ~ barrel

execute 
    align xyz 
    positioned ~.5 ~.5 ~.5
    summon item_display
    run function ~/place_entity:
        # Define the ioconfig
        data modify entity @s item.tag.itemio.ioconfig set value []

        for slot in range(9, 18):
            slot_str = f"{slot}b"
            data modify entity @s item.tag.itemio.ioconfig append value {
                Slot:slot,
                mode: "both",
                allowed_side:{bottom:1b,top:1b,north:1b,south:1b,east:1b,west:1b},
                filters:[
                    {id:["minecraft:dirt"]}
                ]
            }
        
        tag @s add itemio.container # The required tag
        # tag @s add itemio.container.hopper # To make it work with hoppers
        function #itemio:calls/container/init