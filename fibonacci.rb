def recursive_fib(num)
  if num <= 1
    return num
  else
    recursive_fib(num - 1) + recursive_fib(num - 2)
  end
end

def iterative_fib(num)
  a = 1
  b = 0
  temp = 0

  while num >= 1
    temp = a
    a = a + b
    b = temp
    num = num - 1
  end

  return b

end

puts "recursive fibonnaci:"
puts recursive_fib(9)

puts "iterative fibonnaci:"
puts iterative_fib(9)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end
