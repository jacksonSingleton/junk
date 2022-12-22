TOTAL_LENGTH = 24

bits = TOTAL_LENGTH.times.map { rand(2) }.join
PULL_AMT = bits.count('0')
puts "Pulling #{PULL_AMT} bits from #{bits}"

bits_2 = ""

puts "STARTING GROUP #{bits}"

for i in 0..(PULL_AMT - 1) do
  idx = rand(bits.length)
  bits_2 += bits[idx]
  bits.slice!(idx)
end

puts "BEFORE FLIP"
puts "Group 1: #{bits}   => #{bits.count('0')} zeroes\nGroup 2: #{bits_2}  => #{bits_2.count('0')} zeroes"
flipped = ""

bits_2.each_char do |c|
  c == "1" ? flipped += "0" : flipped += "1"
end

puts "AFTER FLIP"
puts "Group 1: #{bits} => #{bits.count('0')} zeroes\nGroup 2: #{flipped} => #{flipped.count('0')} zeroes"
