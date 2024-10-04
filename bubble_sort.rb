def bubble_sort(array)
  # flag for swapping places
  swap = true
  
  # save array size value for later use
  n = array.size

  # run the loop while replacements in array occur
  while swap
    # set the flag to false on every iteration
    swap = false

    # run through the array until main loop stops, skip the last item
    (n - 1).times do |i|
      # compare adjacent items, swap their places if they're out of order
      # set the flag to true
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swap = true
      end
    end
    # optimization: skip the last checked item on next iteration
    # because it's already in place
    n -= 1
  end

  # when main loop ends return sorted array
  array
end

# print the resulting object in one line
p bubble_sort([3, 2, 5, 7, 1, 9])
