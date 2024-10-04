def bubble_sort(array)
  # init the array check boundary
  boundary = array.size - 1

  # run the loop while replacements in array occur
  while boundary > 0
    # variable for tracking last item swapping occured
    swap_index = 0

    # run through the array until main loop stops, skip the last item
    (1..boundary).each do |i|
      # compare adjacent items, swap their places if they're out of order
      if array[i] < array[i - 1]
        array[i], array[i - 1] = array[i - 1], array[i]
        # set swap_index equal to swapped item's index
        swap_index = i
      end
    end
    # optimization: set next check boundary to swap_index, skip remaining elements
    boundary = swap_index
  end

  # when main loop ends return sorted array
  array
end

# print the resulting object in one line
p bubble_sort([4,3,78,2,0,2])
