#!/bin/ruby

# :reek:UncommunicativeMethodName:accept: {rot13}
# :reek:UtilityFunction:public_methods_only: true
def rot13(secret_messages)
  secret_messages.collect {|char| char.tr('A-Za-z', 'N-ZA-Mn-za-m')}
end
