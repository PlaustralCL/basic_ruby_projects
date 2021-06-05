# frozen_string_literal: true

test_array = [4, 3, 78, 2, 0, 2]

# Loop through each element in the array. Starts at element 1 to prevent
# going off the end of the array. Compares i to i - 1. Since the largest
# unsorted value ends up at the proper positon on the right after each
# complete pass through the array, the length of the loop can be shortened
# by one each time it is used.
def bubble_sort(arr, sorted: true)
  # Number of times to go through the entire array
  for k in 1..(arr.length - 1)

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

puts "Original Array: #{test_array}"
puts "Sorted Array #{bubble_sort(test_array)}"
puts ''
puts 'Original Array: [9, 8, 7, 6, 5, 4]'
puts "Sorted Array #{bubble_sort([9, 8, 7, 6, 5, 4])}"
puts ''
puts 'Original Array: [1, 2, 3, 4, 5]'
puts "Sorted Array #{bubble_sort([1, 2, 3, 4, 5])}"
