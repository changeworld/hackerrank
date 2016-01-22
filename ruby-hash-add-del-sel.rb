# Enter your code here.
hackerrank.store(543121,100)
hackerrank.select! {|key, value| key.is_a?(Integer)}
hackerrank.reject! {|key, value| key % 2 == 0}