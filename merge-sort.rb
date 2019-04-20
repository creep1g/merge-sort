def merge_sort(array)
  n = array.length
  return array if n < 2
  a = merge_sort(array[0...(n/2)])
  b = merge_sort(array[(n/2..-1)])
  p merge(a,b)
end
def merge(left, right)
  a = []
  until left.empty? || right.empty?
    a << (left[0] <= right[0] ? left.shift : right.shift)
  end
  a + left + right
end
p merge_sort([2, 4, 1, 3, 5, 8, 9, 7, 108, 230, 23, 89, 54])

  