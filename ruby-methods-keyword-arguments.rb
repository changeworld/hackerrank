# Your code here
def convert_temp(n, option)
  celsius = case option[:input_scale]
    when 'kelvin' then n - 273.15
    when 'fahrenheit' then (n - 32) * 5 / 9.0
    else n
  end

  temp = case option[:output_scale]
    when 'kelvin' then celsius + 273.15
    when 'fahrenheit' then celsius * 9 / 5.0 + 32
    else celsius
  end
end
