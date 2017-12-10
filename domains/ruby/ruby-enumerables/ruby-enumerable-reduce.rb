#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def sum_terms(num)
  (1..num).inject(0) {|sum, idx| sum + (idx ** 2) + 1}
end
