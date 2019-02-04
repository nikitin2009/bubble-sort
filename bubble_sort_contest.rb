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


# arr = Array.new(100, 0)+ [1] + Array.new(1000, 2)
arr = (1..1000).to_a.shuffle

bubble_sort_Cheda_time = Benchmark.realtime do
  10_000.times { bubble_sort_Cheda(arr) }
end

bubble_sort_Alex_time = Benchmark.realtime do
  10_000.times { bubble_sort_Alex(arr) }
end

puts "bubble_sort_Cheda_time: #{bubble_sort_Cheda_time}"
puts "bubble_sort_Alex_time: #{bubble_sort_Alex_time}"
