#!/bin/ruby
=begin
https://ja.wikipedia.org/w/index.php?title=%E3%83%94%E3%82%BF%E3%82%B4%E3%83%A9%E3%82%B9%E3%81%AE%E5%AE%9A%E7%90%86&section=3#.E3.83.94.E3.82.BF.E3.82.B4.E3.83.A9.E3.82.B9.E6.95.B0.E3.81.AE.E6.80.A7.E8.B3.AA
=end
h = Hash.new(-1)
m = 1
while m <= 38
  n = 1
  while n < m
    if n.gcd(m) == 1
      a = m*m - n*n
      b = 2*m*n
      c = m*m + n*n
      i = 1
      while i*(a+b+c) <= 3000
        if h[i*(a+b+c)] < a*b*c * (i**3)
          h[i*(a+b+c)] = a*b*c * (i**3)
        end
        i+=1
      end
    end
    n+=1
  end
  m+=1
end

gets.strip.to_i.times{
  p h[gets.to_i]
}
