# Your code here
def prime?(n)
  n > 1 && (2..n-1).all? {|i| n % i != 0}
end
