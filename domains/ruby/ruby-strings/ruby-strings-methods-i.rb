#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def process_text(arr)
  arr.map(&:strip)*' '
end
