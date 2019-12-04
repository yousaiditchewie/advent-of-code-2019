input_list = [
    104489,
    69854,
    93424,
    103763,
    119636,
    130562,
    121744,
    84851,
    143661,
    94519,
    116576,
    148771,
    74038,
    131735,
    95594,
    125198,
    92217,
    84471,
    53518,
    97787,
    55422,
    137807,
    78806,
    74665,
    103930,
    121642,
    123008,
    104598,
    97383,
    129359,
    85372,
    88930,
    106944,
    118404,
    126095,
    67230,
    116697,
    85950,
    148291,
    123171,
    82736,
    52753,
    134746,
    53238,
    74952,
    105933,
    104613,
    115283,
    80320,
    139152,
    76455,
    66729,
    81209,
    130176,
    116843,
    67292,
    74262,
    131694,
    92817,
    51540,
    58957,
    143342,
    76896,
    129631,
    77148,
    129784,
    115307,
    96214,
    110538,
    51492,
    124376,
    78161,
    59821,
    58184,
    132524,
    130714,
    112653,
    137988,
    112269,
    62214,
    115989,
    123073,
    119711,
    82258,
    67695,
    81023,
    70012,
    93438,
    131749,
    103652,
    63557,
    88224,
    117414,
    75579,
    146422,
    139852,
    85116,
    124902,
    143167,
    147781,
]

# this one works 👍🏻
def get_fuel_for_module(given_module) 
    mass_divided_by_3 = given_module / 3
    rounded_down = mass_divided_by_3.floor
    return rounded_down - 2
end


def get_total_fuel_for_mass(mass)
    fuel_needed_for_mass = mass
    required_fuel = 0

    while fuel_needed_for_mass > 0
        fuel_required_for_fuel = get_fuel_for_module(fuel_needed_for_mass)
        required_fuel += fuel_required_for_fuel unless fuel_required_for_fuel < 0

        fuel_needed_for_mass = fuel_required_for_fuel
    end

    return required_fuel
end 

def get_total_fuel_requirement_for(list)
    list.reduce(0) { |sum, item| sum + get_total_fuel_for_mass(item) }
end


# puts(get_total_fuel_for_mass(14))
# puts(get_total_fuel_for_mass(1969))
# puts(get_total_fuel_for_mass(100756))
# part 1 complete
# puts(get_total_fuel_requirement_for(input_list))

# part 2
puts(get_total_fuel_requirement_for(input_list))