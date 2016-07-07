gets.chomp.to_i.times{
  odd = ""
  even = ""
  gets.chomp.each_char.with_index{|c, index|
    odd += c if index % 2 == 0
    even += c if index % 2 == 1
  }
  puts odd + " " + even
}
