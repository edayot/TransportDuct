# @public

execute 
    if data storage smithed.crafter:input {flags:["transportduct:filter_not_consume"]} 
    unless items entity @s weapon.mainhand *[minecraft:custom_data~{ctc:{id:"id_filter",from:"airdox_:transportduct"}}]
    run scoreboard players set $temp smithed.data 1


