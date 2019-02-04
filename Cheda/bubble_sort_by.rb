
def bubble_sort_by(a, &block)
  i = 0
  j = 0
  while i < a.length  do
    while j < (a.length - i - 1) do
        if yield(a[j],a[j+1]) > 0
          temp = a[j+1]
          a[j+1] = a[j]
          a[j] = temp
        end
        j +=1
    end
    i += 1
  end
return a
end

 bubble_sort_by(["hi","hello","hey"]) do |left,right|
   left.length - right.length
 end
