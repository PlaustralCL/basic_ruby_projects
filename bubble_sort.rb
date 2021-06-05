# frozen_string_literal: true

# Loop through each element in the array. Starts at element 1 to prevent
# going off the end of the array. Compares i to i - 1. Since the largest
# unsorted value ends up at the proper positon on the right after each
# complete pass through the array, the length of the loop can be shortened
# by one each time it is used.
# @param arr [Array] Array of numbers to be sorted
# @param sorted [Boolean] Do no use. Dummy parameter to reduce lines in the
#   body of the method. Default value is true.
def bubble_sort(arr, sorted: true)
  arr.each_index do |k|
    k += 1

    for i in 1..(arr.length - k)
      if arr[i] < arr[i - 1]
        arr[i], arr[i - 1] = arr[i - 1], arr[i]
        sorted = false
      end
    end

    break if sorted
  end
  # Return value
  arr
end

test_data = [
  { test_array: [4, 3, 78, 2, 0, 2], expected: [0, 2, 2, 3, 4, 78] },
  { test_array: [9, 8, 7, 6, 5, 4], expected: [4, 5, 6, 7, 8, 9] },
  { test_array: [1, 2, 3, 4, 5], expected: [1, 2, 3, 4, 5] }
]

test_data.each_with_index do |obj, _index|
  expected = obj[:expected]
  result = bubble_sort(obj[:test_array])
  if expected == result
    puts "For #{obj[:test_array]}, expected #{expected} and got #{result}"
  else
    puts "ERROR! For #{obj[:test_array]}, expected #{expected} and got #{result}"
  end
end

# puts "Original Array: #{test_array}"
# puts "Sorted Array #{bubble_sort(test_array)}"
# puts ''
# puts 'Original Array: [9, 8, 7, 6, 5, 4]'
# puts "Sorted Array #{bubble_sort([9, 8, 7, 6, 5, 4])}"
# puts ''
# puts 'Original Array: [1, 2, 3, 4, 5]'
# puts "Sorted Array #{bubble_sort([1, 2, 3, 4, 5])}"
