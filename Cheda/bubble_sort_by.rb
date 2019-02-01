def bubble_sort_by(a)
print a
puts ""
  i = 0
  j = 0
  while i < a.length do

    while j < (a.length - i -1) do

        if a[j] < a[j+1]
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

# not sure if I understood the assignment completely.
# I didn't do anything major to the method in buble_sort.rb file
# Only change was made in the conditional statement on line 10.

 bubble_sort_by(["hi","hello","hey"]) do |left,right|
   left.length - right.length
 end
