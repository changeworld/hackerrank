#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def arr_add(arr, element)
  arr.push(element)
end

# :reek:UtilityFunction:public_methods_only: true
def begin_arr_add(arr, element)
  arr.unshift(element)
end

# :reek:UtilityFunction:public_methods_only: true
def index_arr_add(arr, index, element)
  arr.insert(index, element)
end

# :reek:UtilityFunction:public_methods_only: true
def index_arr_multiple_add(arr, index)
  arr.push(index).push(index)
end
