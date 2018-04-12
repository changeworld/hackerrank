#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
# :reek:TooManyStatements {max_statements: 6}
def convert_temp(num, option)
  celsius = case option[:input_scale]
    when 'kelvin' then num - 273.15
    when 'fahrenheit' then (num - 32) * 5 / 9.0
    else num
  end

  temp = case option[:output_scale]
    when 'kelvin' then celsius + 273.15
    when 'fahrenheit' then celsius * 9 / 5.0 + 32
    else celsius
  end
end
