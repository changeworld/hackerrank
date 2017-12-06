#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def transcode(str)
  str.force_encoding('UTF-8')
end
