#!/bin/ruby

# The Array class extended for Day 7: Pearson Correlation Coefficient I
class Array
  # :reek:TooManyStatements { max_statements: 11 }
  def calculate_correlation_coefficient(float)
    m_x = self.reduce(:+)/self.size.to_f
    m_y = float.reduce(:+)/float.size.to_f
    cov = self.zip(float).reduce(0){|num, (fst,snd)| num + (fst-m_x) * (snd-m_y)}
    v_x = self.reduce(0){|num, elm| num + (elm-m_x) ** 2}
    v_y = float.reduce(0){|num, elm| num + (elm-m_y) ** 2}
    ret = cov / Math.sqrt(v_x * v_y)
    ret.nan? ? 0 : ret
  end
end

n = gets.to_i
X = gets.split.map(&:to_f)
Y = gets.split.map(&:to_f)
puts '%.3f'%X.calculate_correlation_coefficient(Y)
