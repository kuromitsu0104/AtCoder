str = gets.chomp

str.chars.each_with_index do |s, idx|
  if idx.even? && s !~ /[a-z]/
    puts 'No'
    exit
  end

  if idx.odd? && s !~ /[A-Z]/
    puts 'No'
    exit
  end
end

puts 'Yes'