# Reimplement the bubble sort outlined in the preceding lecture.
# The bubble_sort method should accept an array of numbers and arrange the elements in increasing order.
# The method should return the array.
# Do not use the built-in Array#sort

def bubble_sort(array)
    while !is_sorted(array)
        array[0...-1].each_index { |i|  array[i],array[i+1] = array[i+1],array[i]  if  array[i]>array[i+1]  }
    end
    array
end

def is_sorted(arr)
    arr[0...-1].each_index {|i| return false if arr[i] > arr[i+1] }
    true
end

p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]