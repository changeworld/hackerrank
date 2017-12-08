#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def select_arr(arr)
  arr.select {|ar| ar.modulo(2) == 1}
end

# :reek:UtilityFunction:public_methods_only: true
def reject_arr(arr)
  arr.reject {|ar| ar.modulo(3) == 0}
end

# :reek:UtilityFunction:public_methods_only: true
def delete_arr(arr)
  arr.delete_if {|ar| ar < 0}
end

# :reek:UtilityFunction:public_methods_only: true
def keep_arr(arr)
  arr.keep_if {|ar| ar >= 0}
end
