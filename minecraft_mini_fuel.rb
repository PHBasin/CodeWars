def calc_fuel(n)
  result = { lava: 0, blaze_rod: 0, coal: 0, wood: 0, stick: 0 }
  time_needed = n * 11
  until time_needed.zero?
    while time_needed >= 800
      result[:lava] += 1
      time_needed -= 800
    end
    while time_needed >= 120
      result[:blaze_rod] += 1
      time_needed -= 120
    end
    while time_needed >= 80
      result[:coal] += 1
      time_needed -= 80
    end
    while time_needed >= 15
      result[:wood] += 1
      time_needed -= 15
    end
    while time_needed >= 1
      result[:stick] += 1
      time_needed -= 1
    end
  end
  result
end

# Best practices

# FUEL_TYPES = { lava: 800, blaze_rod: 120, coal: 80, wood: 15, stick: 1 }

# def calc_fuel(ingots)
#   ingot_seconds = ingots * 11

#   FUEL_TYPES.each_with_object({}) { |(fuel_type, fuel_seconds), memo|
#     memo[fuel_type], ingot_seconds = ingot_seconds.divmod(fuel_seconds)
#   }
# end
