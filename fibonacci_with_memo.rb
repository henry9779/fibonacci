def fibonacci_with_memoization(num)
  @fibonacci_cache ||= {}
  return @fibonacci_cache[num] if @fibonacci_cache[num]

  if num >= 2
    @fibonacci_cache[num] = fibonacci_with_memoization(num - 1) + fibonacci_with_memoization(num - 2)
  else
    @fibonacci_cache[num] = num
  end

  @fibonacci_cache[num]
end

def measure_runtime
  start_time = Time.now
  yield
  end_time = Time.now

  runtime = format('%.6f', end_time - start_time)
  puts "Time taken is: #{runtime} seconds"
end

puts 'Enter a number to calculate its Fibonacci with memoization value:'
number = gets.chomp.to_i

measure_runtime do
  result = fibonacci_with_memoization(number)
  puts "The Fibonacci with memoization value for #{number} is: #{result}"
end
