#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def full_name(*name)
  name * ' ' if name.length > 1
end
