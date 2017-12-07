#!/bin/ruby

# :reek:FeatureEnvy:exclude
def serial_average(str)
  arr = str.split('-')
  arr[0]+'-'+sprintf('%.2f', ((arr[1].to_f + arr[2].to_f)/2).to_s)
end
