test_array = [4, 3, 78, 2, 0, 2]

def bubble_sort(arr)
  # variable to track if sorting is complete. Prevents needlessly looping through
  # the array.
  still_sorting = false
  # Number of times to go through the entire array
  for k in 1..(arr.length - 1)
    # Loop through each element in the array. Starts at element 1 to prevent
    # going off the end of the array. Compares i to i - 1. Since the largest
    # unsorted value ends up at the proper positon on the right after each 
    # complete pass through the array, the length of the loop can be shortened
    # by one each time it is used.
    for i in 1..(arr.length - k)
      if arr[i] < arr[i - 1]
        # temp values are used to prevent overwriting the values before they
        # are swapped.
        large_temp = arr[i - 1]
        small_temp = arr[i]
        arr[i - 1] = small_temp
        arr[i] = large_temp
        still_sorting = true
      end
    end

    if still_sorting == false
      break
    else
      k += 1
      still_sorting = false
    end
  end
  # Return value
  arr
end

puts "Original Array: #{test_array}"
puts "Sorted Array #{bubble_sort(test_array)}"
puts ""
puts "Original Array: [9, 8, 7, 6, 5, 4]"
puts "Sorted Array #{bubble_sort([9, 8, 7, 6, 5, 4])}"
puts ""
puts "Original Array: [1, 2, 3, 4, 5]"
puts "Sorted Array #{bubble_sort([1, 2, 3, 4, 5])}"
