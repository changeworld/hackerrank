def count_multibyte_char(str)
  str.each_codepoint.count{|bytes| bytes > 256}
end
