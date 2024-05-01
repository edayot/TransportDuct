# @public



execute 
    store result score @s smithed.data 
    if entity @s[scores={smithed.data=0}] 
    if score count smithed.data matches 1 
    if data storage smithed.crafter:input {recipe:[{count:1,components:{"minecraft:custom_data":{ctc:{id:"id_filter",from:"airdox_:transportduct"}}}}]} 
    run loot replace block ~ ~ ~ container.16 loot transportduct:items/id_filter



execute 
    if entity @s[scores={smithed.data=0}] 
    if score count smithed.data matches 2.. 
    if data storage smithed.crafter:input {recipe:[{count:1,components:{"minecraft:custom_data":{ctc:{id:"id_filter",from:"airdox_:transportduct"}}}}]} 
    run function ./shapeless_recipes/id_filter:
        scoreboard players set @s smithed.data 1
        data remove storage transportduct:main temp.ItemsCraft
        data modify storage transportduct:main temp.ItemsCraft set from storage smithed.crafter:input recipe
        data remove storage transportduct:main temp.ItemsCraft[{components:{"minecraft:custom_data":{ctc:{id:"id_filter",from:"airdox_:transportduct"}}}}]

        execute 
            if data storage transportduct:main temp.ItemsCraft[0]
            run function ./id_filter_2:
                data remove storage transportduct:main temp.ResultCraft
                data modify storage transportduct:main temp.ResultCraft set from storage transportduct:main ItemsNBT.id_filter
                data modify storage transportduct:main temp.ResultCraft.Slot set value 16b

                data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters set value []


                execute
                    run function ./id_filter_3:
                        execute store result score #if_ctc transportduct.math if data storage transportduct:main temp.ItemsCraft[0].components."minecraft:custom_data".ctc 
                        execute store result score #if_smithed_id transportduct.math if data storage transportduct:main temp.ItemsCraft[0].components."minecraft:custom_data".smithed.id

                        execute if score #if_smithed_id transportduct.math matches 1 run function ./smithed_id

                        execute 
                            if score #if_smithed_id transportduct.math matches 0
                            if score #if_ctc transportduct.math matches 1
                            run function ./ctc
                        
                        execute
                            if score #if_smithed_id transportduct.math matches 0
                            if score #if_ctc transportduct.math matches 0
                            run function ./id

                        data remove storage transportduct:main temp.ItemsCraft[0]
                        execute if data storage transportduct:main temp.ItemsCraft[0] run function ./id_filter_3

        data modify block ~ ~ ~ Items append from storage transportduct:main temp.ResultCraft
        
        data remove storage transportduct:main temp.filters
        data modify storage transportduct:main temp.filters set from storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters

        item modify block ~ ~ ~ container.16 transportduct:set_filter_lore_start
        execute 
            if data storage transportduct:main temp.filters[0] 
            run function ./loop_filters:
                item modify block ~ ~ ~ container.16 transportduct:set_filter_lore_middle

                data remove storage transportduct:main temp.filters[0]
                execute if data storage transportduct:main temp.filters[0] run function ./loop_filters
        
        item modify block ~ ~ ~ container.16 transportduct:set_filter_lore_end

        data modify storage smithed.crafter:input flags append value "transportduct:filter_not_consume"


        function ./ctc:

            data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters prepend value {}

            data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters[0].ctc set value []
            data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters[0].ctc append value {}



            data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters[0].ctc[0].id set from storage transportduct:main temp.ItemsCraft[0].components."minecraft:custom_data".ctc.id
            data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters[0].ctc[0].from set from storage transportduct:main temp.ItemsCraft[0].components."minecraft:custom_data".ctc.from

            

        function ./smithed_id:


            data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters prepend value {}

            data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters[0].smithed.id set value []

            data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters[0].smithed.id append from storage transportduct:main temp.ItemsCraft[0].components."minecraft:custom_data".smithed.id


        function ./id:
            data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters prepend value {}

            data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters[0].id set value []

            data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters[0].id append from storage transportduct:main temp.ItemsCraft[0].id






