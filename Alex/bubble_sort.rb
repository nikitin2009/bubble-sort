=begin

Here I tried to implement three versions of the bubble sorting algorithm
described in this article https://en.wikipedia.org/wiki/Bubble_sort
in Pseudocode implementation section

1 Basic algorithm
2 "Optimized"
3 "Even more optimized"

However, the benchmark measures didn't show any stable difference. Moreover, the third
"Even more optimezed" version showed worse results than the "Optimized" version in some
runs.

??? Maybe I missed something?

=end





require 'benchmark'

def bubble_sort(a)

  n = a.length

  loop do

    swapped = false
    for i in (1...n)
      if a[i-1] > a[i]
        a[i-1], a[i] = a[i], a[i-1]
        swapped = true
      end
    end

    break if !swapped

  end

  a

end


def bubble_sort_optimized(a)
  
  n = a.length

  loop do

    swapped = false
    for i in (1...n)
      if a[i-1] > a[i]
        a[i-1], a[i] = a[i], a[i-1]
        swapped = true
      end
    end

    n -= 1

    break if !swapped

  end

  a

end


def bubble_sort_optimized_2(a)
  
  n = a.length

  loop do

    newn = 0
    for i in (1...n)
      if a[i-1] > a[i]
        a[i-1], a[i] = a[i], a[i-1]
        newn = i
      end
    end

    n = newn

    break if n <= 1

  end

  a

end

# tried a few different arrays here - results are basically the same
arr = Array.new(100, 0)+ [1] + Array.new(1000, 2)

bubble_sort_time = Benchmark.realtime do
  10_000.times { bubble_sort(arr) }
end

bubble_sort_optimized_time = Benchmark.realtime do
  10_000.times { bubble_sort_optimized(arr) }
end

bubble_sort_optimized_2_time = Benchmark.realtime do
  10_000.times { bubble_sort_optimized_2(arr) }
end

puts "bubble_sort_time: #{bubble_sort_time}"
puts "bubble_sort_optimized_time: #{bubble_sort_optimized_time}"
puts "bubble_sort_optimized_2_time: #{bubble_sort_optimized_2_time}"