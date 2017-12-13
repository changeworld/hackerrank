#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def group_by_marks(marks, pass_marks)
  marks.map{|key, val| [key.to_s, val]}.to_h.group_by {|name, mark| mark < pass_marks ? 'Failed' : 'Passed'}
end
