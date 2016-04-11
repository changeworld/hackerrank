combination = -> (number) do
  -> (another_number) do
    (0..(another_number - 1)).inject(1){|sum,i|sum*(number-i)} / (1..another_number).inject{|sum,i| sum*i}
  end
end

n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)
