#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def neg_pos(arr, index)
  arr[-index]
end

# :reek:UtilityFunction:public_methods_only: true
def first_element(arr)
  arr.first
end

# :reek:UtilityFunction:public_methods_only: true
def last_element(arr)
  arr.last
end

# :reek:UtilityFunction:public_methods_only: true
def first_n(arr, index)
  arr.take(index)
end

# :reek:UtilityFunction:public_methods_only: true
def drop_n(arr, index)
  arr.drop(index)
end
