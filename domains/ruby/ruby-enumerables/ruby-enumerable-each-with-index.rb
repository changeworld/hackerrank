#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def skip_animals(animals, skip)
  animals.each_with_index.map {|animal, index| "#{index}:#{animal}"}.drop(skip)
end
