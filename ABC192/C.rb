n, K = gets.split.map(&:to_i)
K.times do |i|
  x = n.to_s.bytes.sort!
  y = x.reverse
  n = y.pack("c*").to_i - x.pack("c*").to_i
end
p n