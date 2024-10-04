def bubble_sort(array)
# flag for swapping places
  swap = true

# run the loop while replacements in array occur
  while swap
    # set the flag to false on every iteration
    swap = false
    # run through the array until main loop stops, skip the last item
    (array.size - 1).times do |i|
    # compare adjacent items, swap their places if they're out of order
    # set the flag to true
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swap = true
      end
    end
  end

  # when main loop ends return sorted array
  array
end

# print the resulting object in one line
p bubble_sort([3, 2, 5, 7, 1, 9])
