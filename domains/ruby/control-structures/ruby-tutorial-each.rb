#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def scoring(array)
  array.each(&:update_score)
end
