# Enter your code here
def strike(str)
  '<strike>'+str+'</strike>'
end

def mask_article(str, arr)
  arr.each{|e| str.gsub!(e, &method(:strike))}
  str
end
