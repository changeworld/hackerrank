#!/bin/ruby

class Array
  def calculate_correlation_coefficient(y)
    m_x = self.reduce(:+)/self.size.to_f
    m_y = y.reduce(:+)/y.size.to_f

    cov = self.zip(y).reduce(0){|s, (a,b)| s + (a-m_x) * (b-m_y)}

    v_x = self.reduce(0){|s, e| s + (e-m_x) ** 2}
    v_y = y.reduce(0){|s, e| s + (e-m_y) ** 2}

    r = cov / Math.sqrt(v_x * v_y)
    r.nan? ? 0 : r
  end
end

n = gets.to_i
X = gets.split.map(&:to_f)
Y = gets.split.map(&:to_f)
puts '%.3f'%X.calculate_correlation_coefficient(Y)
