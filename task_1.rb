# Implement the ranges_overlap?(range_1, range_2) method, which takes the numeric ranges range_1 and range_2 as input parameters.

# The method checks whether the ranges passed to the method do not overlap and returns true if the ranges overlap or false if there is no overlap.

# Example of usage:

# p ranges_overlap?(1..5, 4..9)     # true

# p ranges_overlap?(1..5, 6..10)    # false


def ranges_overlap?(range_1, range_2)
  range_1.each do |num|
    return true if range_2.include?(num)
  end
  false
end

p ranges_overlap?(1..5, 4..9)     # true

p ranges_overlap?(1..5, 6..10)    # false
