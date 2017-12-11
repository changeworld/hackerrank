#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def element_at(arr, index)
  arr[index]
end

# :reek:UtilityFunction:public_methods_only: true
def inclusive_range(arr, start_pos, end_pos)
  arr[start_pos..end_pos]
end

# :reek:UtilityFunction:public_methods_only: true
def non_inclusive_range(arr, start_pos, end_pos)
  arr[start_pos...end_pos]
end

# :reek:UtilityFunction:public_methods_only: true
def start_and_length(arr, start_pos, length)
  arr[start_pos, length]
end
