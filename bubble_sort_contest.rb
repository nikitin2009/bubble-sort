require 'benchmark'

def bubble_sort_Cheda(a)
  i = 0
  while i < (a.length - 1) do
    j = 0
    switch = false
    while j < (a.length - (1+i)) do
        if a[j] > a[j+1]
          a[j], a[j+1] = a[j+1], a[j]
          switch = true
        end
        j +=1
      end
      break if switch == false
    i += 1
  end
return a
end

def bubble_sort_Alex(a)
  last_swapped = a.length
  while last_swapped > 1
    new_last_swapped = 0
    i = 1
    while i < last_swapped
      if a[i-1] > a[i]
        a[i-1], a[i] = a[i], a[i-1]
        new_last_swapped = i
      end
      i += 1
    end
    last_swapped = new_last_swapped
  end
  return a
end

# arr = Array.new(100, 0)+ [1] + Array.new(1000, 2)
arr = [5,1,3,6,7,8,9,5]

# bubble_sort_Cheda(arr)
# bubble_sort_Alex(arr)

bubble_sort_Cheda_time = Benchmark.realtime do
  100000.times { bubble_sort_Cheda(arr) }
end

bubble_sort_Alex_time = Benchmark.realtime do
  100000.times { bubble_sort_Alex(arr) }
end

puts "bubble_sort_Cheda_time: #{bubble_sort_Cheda_time}"
puts "bubble_sort_Alex_time: #{bubble_sort_Alex_time}"
