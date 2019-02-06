def bubble_sort(a)
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

test_array = [5,1,3,6,7,8,9,5]

sorted_array = bubble_sort(test_array)
