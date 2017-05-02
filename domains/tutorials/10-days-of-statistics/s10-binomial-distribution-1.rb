#!/bin/ruby
=begin
b b b b b b ->  1
b b b b b g ->  6
b b b b g g -> 15
b b b g g g -> 20
b b g g g g -> 15
b g g g g g ->  6
g g g g g g ->  1
=end

class Integer
    def comb(r)
        if r == 0 then return 1 end
        n = self
        ret = 1
        if r > n/2 then r = n-r end
        r.times{|i|
            ret = ret*(n-i)/(i+1)
        }
        return ret
    end
end

b = 1.09/2.09
puts '%.3f'%[(3..6).reduce(0){|ret, i| ret+6.comb(i)*b**i*(1-b)**(6-i)}]
