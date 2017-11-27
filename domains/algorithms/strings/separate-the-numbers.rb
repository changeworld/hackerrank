#!/bin/ruby

# :reek:DuplicateMethodCall { max_calls: 2 }
# :reek:FeatureEnvy:exclude
def beautiful_string(str)
  for idx in 1..(str.size/2)+1
    tmp = str[0, idx].to_i
    return tmp if str == generate_beautiful_string(tmp, str.size)
  end
  return false
end

# :reek:UtilityFunction:public_methods_only: true
def generate_beautiful_string(str, length)
  rtn, idx = '', 0
  while rtn.size < length
    rtn, str, idx = rtn + str.to_s, str + 1, idx + 1
  end
  return idx == 1 ? '' : rtn
end

gets.strip.to_i.times{
  rtn = beautiful_string(gets.strip)
  puts rtn ? "YES #{rtn}" : 'NO'
}
