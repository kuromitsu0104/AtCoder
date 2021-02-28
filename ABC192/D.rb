X = gets.chomp.to_s
x = X.to_s.chars.map(&:to_i)
M = gets.to_i

def conversion(x, a)
  b = 0
  result = 0
  x.each do |n|
    b += 1
    result += n * (a ** (x.length-b))
  end
  return result
end

if x.size == 1
  p x[0] <= M ? 1 : 0
  exit
end

a = x.max

puts ((a+1)..(M*3)).bsearch {|n| !(conversion(x, n) <= M)}-(a+1)