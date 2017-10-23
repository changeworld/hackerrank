_ = gets
s = gets.strip.split("")
v, lvl = 0, 0
for i in 0..s.length do
  v += 1 if (lvl == 0 && s[i] == 'D')
  lvl += 1 if (s[i] == 'U')
  lvl -= 1 if (s[i] == 'D')
end
p v
