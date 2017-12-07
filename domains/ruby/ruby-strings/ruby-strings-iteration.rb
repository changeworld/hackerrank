#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def count_multibyte_char(str)
  str.each_codepoint.count{|bytes| bytes > 256}
end
