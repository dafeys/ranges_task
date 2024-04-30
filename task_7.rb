# Implement the make_ranges(array) method, which accepts an array of integer values as an input parameter.

# The method must transform the input array array into an array where the elements are ranges, and the beginning of the element-range is determined by the previous element of the array incremented by 1, and the end is determined by the next element of the array. The first range element starts at 0.


def make_ranges(array)
  output = []

  array.each_with_index do |el, i|
    if i.zero?
      output << (0..el)
    else
      output << ((array[i - 1] + 1)..el)
    end
  end

  output
end







p make_ranges([4,7,10,12,18])    # [0..4, 5..7, 8..10, 11..12, 13..18]
p make_ranges([3,5,6,15,18,21])  # [0..3, 4..5, 6..6, 7..15, 16..18, 19..21]
