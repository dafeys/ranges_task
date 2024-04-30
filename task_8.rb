# Implement the create_consecutive_ranges(arr) method, which takes an array of integer values arr as an input parameter.

# The method must return a array whose elements are ranges formed from successive increasing integers in increments of 1. If the number is not related to the previous sequence of numbers (for example, 3,4,5 and 7), then this number forms a separate range from the value of that number.


def create_consecutive_ranges(arr)
  output = []
  start = arr[0]

  arr.each_cons(2) do |a, b|
    if b - a != 1
      output << (start..a)
      start = b
    end
  end

  output << (start..arr[-1])
  output
end

def create_consecutive_ranges(arr)
  arr.slice_when { |a, b| a + 1 != b }
     .map { |slice| slice.first..slice.last }
end



p create_consecutive_ranges([1,2,3,7,8,9,15,16,17,18]) # [1..3, 7..9, 15..18]
p create_consecutive_ranges([1,2,3,5,8,9,10,11,12]) # [1..3, 5..5, 8..12]

# p increment?(1,2)
# p increment?(1,3)
