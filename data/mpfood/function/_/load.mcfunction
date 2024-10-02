#>mpfood:_/load
#--------------------
# @LOAD
#--------------------

# load
scoreboard players set *mpfood load-status 1

# settings
execute unless data storage mpfood:settings {PERSIST:true} run function mpfood:settings

#declare storage mpfood:var
#declare storage mpfood:in
#declare storage mpfood:out
#declare storage mpfood:data
#declare storage mpfood:hook
#declare storage mpfood:implement

# scoreboards
scoreboard objectives add -mpfood dummy
scoreboard objectives add --mpfood dummy
#scoreboard objectives add mpfood-scoreboard dummy

# tick
schedule clear mpfood:_/tick
function mpfood:_/tick