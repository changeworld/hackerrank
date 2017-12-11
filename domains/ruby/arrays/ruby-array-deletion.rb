#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def end_arr_delete(arr)
  arr.pop
end

# :reek:UtilityFunction:public_methods_only: true
def start_arr_delete(arr)
  arr.shift
end

# :reek:UtilityFunction:public_methods_only: true
def delete_at_arr(arr, index)
  arr.delete_at(index)
end

# :reek:UtilityFunction:public_methods_only: true
def delete_all(arr, val)
  arr.delete(val)
end
