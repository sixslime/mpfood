#>mpfood:settings

#declare storage mpfood:settings
data modify storage mpfood:settings PERSIST set value false

#>-------------------
#> setting : 
#-------------------
# ~ 
#-------------------
# - 
#-------------------
## data modify storage mpfood:settings setting set value 0
#>-------------------

data modify storage mpfood:settings items set value []

# CRAFTED MEALS

# COOKED MEAT
data modify storage mpfood:settings items append value {item:"minecraft:cooked_beef"}
data modify storage mpfood:settings items[-1].food_stats set value {nutrition:8, saturation:15, eat_duration:120}
data modify storage mpfood:settings items append value {item:"minecraft:cooked_porkchop"}
data modify storage mpfood:settings items[-1].food_stats set value {nutrition:10, saturation:18, eat_duration:140}
data modify storage mpfood:settings items append value {item:"minecraft:cooked_chicken"}
data modify storage mpfood:settings items[-1].food_stats set value {nutrition:7, saturation:13, eat_duration:100}
data modify storage mpfood:settings items append value {item:"minecraft:cooked_rabbit"}
data modify storage mpfood:settings items[-1].food_stats set value {nutrition:7, saturation:10, eat_duration:80}
data modify storage mpfood:settings items append value {item:"minecraft:cooked_cod"}
data modify storage mpfood:settings items[-1].food_stats set value {nutrition:5, saturation:8, eat_duration:70}
data modify storage mpfood:settings items append value {item:"minecraft:cooked_salmon"}
data modify storage mpfood:settings items[-1].food_stats set value {nutrition:4, saturation:7, eat_duration:60}

# RAW MEAT
data modify storage mpfood:settings items append value {item:"minecraft:beef"}
data modify storage mpfood:settings items[-1].food_stats set value {nutrition:4, saturation:2.5, eat_duration:110}
data modify storage mpfood:settings items[-1].on_consume_effects append value {type:"apply_effects",effects:[{id:"minecraft:nausea",amplifier:0, duration:200}], probability:0.4}
data modify storage mpfood:settings items append value {item:"minecraft:porkchop"}
data modify storage mpfood:settings items[-1].food_stats set value {nutrition:5, saturation:3.5, eat_duration:130}
data modify storage mpfood:settings items[-1].on_consume_effects append value {type:"apply_effects",effects:[{id:"minecraft:nausea",amplifier:0, duration:200}], probability:0.4}
data modify storage mpfood:settings items append value {item:"minecraft:chicken"}
data modify storage mpfood:settings items[-1].food_stats set value {nutrition:3, saturation:1, eat_duration:90}
data modify storage mpfood:settings items[-1].on_consume_effects append value {type:"apply_effects",effects:[{id:"minecraft:poison",amplifier:0, duration:200},{id:"minecraft:nausea",amplifier:0, duration:220}], probability:0.7}
data modify storage mpfood:settings items append value {item:"minecraft:rabbit"}
data modify storage mpfood:settings items[-1].food_stats set value {nutrition:3, saturation:1, eat_duration:60}
data modify storage mpfood:settings items[-1].on_consume_effects append value {type:"apply_effects",effects:[{id:"minecraft:poison",amplifier:0, duration:160},{id:"minecraft:nausea",amplifier:0, duration:180}], probability:0.6}
data modify storage mpfood:settings items append value {item:"minecraft:salmon"}
data modify storage mpfood:settings items[-1].food_stats set value {nutrition:2, saturation:3, eat_duration:50}
data modify storage mpfood:settings items append value {item:"minecraft:cod"}
data modify storage mpfood:settings items[-1].food_stats set value {nutrition:3, saturation:4, eat_duration:60}
data modify storage mpfood:settings items append value {item:"minecraft:tropical_fish"}
data modify storage mpfood:settings items[-1].food_stats set value {nutrition:1, saturation:3, eat_duration:35}
#data modify storage mpfood:settings items[-1].on_consume_effects append value {type:"apply_effects",effects:[{id:"minecraft:speed",amplifier:0, duration:200}]}


data modify storage mpfood:settings items[].on_consume_effects[{type:"apply_effects"}].effects[].ambient set value true