# Enter your code here. Read input from STDIN. Print output to STDOUT
if (?a..?z).grep(/[^#{gets}]/i)==[] then
  print "pangram"
else
  print "not pangram"
end
