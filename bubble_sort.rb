def bubble_sort(a)
print a
puts ""
  i = 0
  j = 0
  while i < a.length do

    while j < (a.length - i -1) do

        if a[j] > a[j+1]
          temp = a[j+1]
          a[j+1] = a[j]
          a[j] = temp
        end
        j +=1
    end
    i += 1
  end
  print a
end

test_array = [5,1,3,6,7,8,9,5]

sorted_array = bubble_sort(test_array)

puts sorted_array
