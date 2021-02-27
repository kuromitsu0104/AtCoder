int = gets.to_i
res = 0
while true do
  int += 1
  res += 1
  if int%100 == 0
    puts res
    break
  end
end