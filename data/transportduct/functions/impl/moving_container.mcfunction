summon chest_minecart ~ ~ ~ {
    Passengers:[{id:"minecraft:marker",
    Tags:[
        "example.chest_minecart_container.base",
        "itemio.container",
        "itemio.container.hopper",
        "itemio.container.nbt_items",
        "itemio.container.nbt_items.on_vehicle"
        ]
    }],
    Tags:["example.chest_minecart_container","example.chest_minecart_container.summoned"]

}


execute 
    as @e[tag=example.chest_minecart_container.summoned]
    run function ~/on_summon:
        tag @s remove example.chest_minecart_container.summoned
        execute 
            on passengers 
            run function ./on_summon_marker:
                data modify entity @s data.itemio.ioconfig set value []
                data modify entity @s data.itemio.ioconfig append value {
                    Slot:0b,
                    mode: "input",
                    allowed_side:{bottom:1b,north:1b,east:1b,south:1b,west:1b,top:1b},
                    filters:[
                        {id:["minecraft:dirt"]}
                    ]
                }
                data modify entity @s data.itemio.ioconfig append value {
                    Slot:1b,
                    mode: "input",
                    allowed_side:{bottom:1b,north:1b,east:1b,south:1b,west:1b,top:1b},
                    filters:[
                        {id:["minecraft:dirt"]}
                    ]
                }
                data modify entity @s data.itemio.ioconfig append value {
                    Slot:2b,
                    mode: "input",
                    allowed_side:{bottom:1b,north:1b,east:1b,south:1b,west:1b,top:1b},
                    filters:[
                        {id:["minecraft:dirt"]}
                    ]
                }
                data modify entity @s data.itemio.nbt_items_path set value "entity @s Items"


                function #itemio:calls/container/init