# @public

execute 
    if data storage smithed.crafter:input {flags:["transportduct:filter_not_consume"]} 
    unless predicate transportduct:holding_id_filter run scoreboard players set $temp smithed.data 1


