@length = 0

def collatz(n)
  @length += 1
  if n == 1
    return n
  elsif n % 2 == 0
    collatz(n / 2)
  else
    collatz(3 * n + 1)
  end
end


@arr = []
@longest = 0

for i in 1..1000000
  @length = 0
  collatz(i)
  @arr.push(@length)
  if @length > @longest
    @longest = @length 
    @index = i
  end
  
end

puts @arr.inspect
puts "Find input that produces longest sequence"
puts "input:"
puts @index
puts "length:"
puts @longest

# input of 1,000,000 has a length of 153
# the input that produces the longest chain of collatz values from 1 to 1000000
# input: 837799, length: 525 
