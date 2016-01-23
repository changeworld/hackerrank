def skip_animals(animals, skip)
  # Your code here
  animals.each_with_index.map {|animal, index| "#{index}:#{animal}"}.drop(skip)
end
