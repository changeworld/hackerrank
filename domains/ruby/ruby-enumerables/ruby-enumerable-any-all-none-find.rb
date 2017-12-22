#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def func_any(hash)
  hash.any? {|key, value| key.is_a?(Integer)}
end

# :reek:UtilityFunction:public_methods_only: true
def func_all(hash)
  hash.all? {|key, value| value.is_a?(Integer) && value < 10}
end

# :reek:UtilityFunction:public_methods_only: true
# :reek:NilCheck: false
def func_none(hash)
  hash.none? {|key, value| value.nil?}
end

# :reek:UtilityFunction:public_methods_only: true
def func_find(hash)
  hash.find {|key, value|
    key.is_a?(Integer) && value.is_a?(Integer) && value.to_i < 20 ||
    key.is_a?(String) && value.is_a?(String) && value[0] == 'a'
  }
end
