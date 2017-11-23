# :reek:UtilityFunction:public_methods_only: true
def strike(str)
  '<strike>'+str+'</strike>'
end

def mask_article(str, arr)
  arr.each{|elm| str.gsub!(elm, &method(:strike))}
  str
end
