test_array = [4, 3, 78, 2, 0, 2]

def bubble_sort(arr)
  still_sorting = false
  for k in 1..(arr.length - 1)
    for i in 1..(arr.length - k)
      if arr[i] < arr[i - 1]
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
