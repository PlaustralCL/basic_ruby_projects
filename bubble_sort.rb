test_array = [4, 3, 78, 2, 0, 2]

def bubble_sort(arr)
  for k in 1..(arr.length - 1)

    for i in 1..(arr.length - 1)
      if arr[i] < arr[i - 1]
        large_temp = arr[i - 1]
        small_temp = arr[i]
        arr[i - 1] = small_temp
        arr[i] = large_temp
      end
    end
    k += 1
  end

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
