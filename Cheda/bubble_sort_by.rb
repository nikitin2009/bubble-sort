
def bubble_sort_by(a, &block)
  i = 0
  while i < (a.length - 1) do
    j = 0
    switch = false
    while j < (a.length - (1+i)) do
        if yield(a[j],a[j+1]) > 0
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


 bubble_sort_by(["hi","hello","hey"]) do |left,right|
   left.length - right.length
 end
