#!/bin/ruby

# The Array class extended for Day 7: Spearman's Rank Correlation Coefficient
class Array
  # :reek:TooManyStatements { max_statements: 11 }
  def calculate_correlation_coefficient(ar)
    m_x = self.reduce(:+)/self.size.to_f
    m_y = ar.reduce(:+)/ar.size.to_f
    cov = self.zip(ar).reduce(0){|num, (fst,snd)| num + (fst-m_x) * (snd-m_y)}
    v_x = self.reduce(0){|num, elm| num + (elm-m_x) ** 2}
    v_y = ar.reduce(0){|num, elm| num + (elm-m_y) ** 2}
    result = cov / Math.sqrt(v_x * v_y)
    result.nan? ? 0 : result
  end

  # :reek:TooManyStatements { max_statements: 8 }
  def spearmans_rank_correlation_coefficient(ar)
    size = self.size
    arr = self.zip(ar).sort
    size.times{|idx| arr[idx] << idx}
    arr.sort_by!{|elm| elm[1]}
    arr.map{|elm| elm[2]}.calculate_correlation_coefficient([*0...size])
  end
end

_ = gets.to_i
X = gets.split.map(&:to_f)
Y = gets.split.map(&:to_f)
puts '%.3f'%X.spearmans_rank_correlation_coefficient(Y)
