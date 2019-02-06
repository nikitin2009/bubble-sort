def bubble_sort_by(a)
  n = a.length
  loop do
    new_n = 0
    for i in (1...n)
      result = yield(a[i-1], a[i])
      if result > 0
        a[i-1], a[i] = a[i], a[i-1]
        new_n = i
      end
    end
    n = new_n
    break if n <= 1
  end
  a
end

arr = ["hi","hello","hey", "", "fsfsdfhsd"]

bubble_sort_by(arr) do |left,right|
  left.length - right.length
end

puts arr.inspect