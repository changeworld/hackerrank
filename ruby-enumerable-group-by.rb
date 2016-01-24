def group_by_marks(marks, n)
  # your code here
  marks.map{|k,v| [k.to_s, v]}.to_h.group_by {|name, mark| mark < n ? 'Failed' : 'Passed'}
end
