#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def take(arr, po=1)
  arr.drop(po)
end
