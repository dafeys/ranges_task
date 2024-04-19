# Write a ranges_iteration(start_days, end_days) method that allows iteration with two time ranges.
# The first range is the input parameters of the start_days, end_days method and forms the period of days over which to iterate. The second range is the range of hours within the day - from 0 to 23.
# The method should output a collection of arrays of 2 values - the 1st value of the day, the 2nd - the corresponding hour of the day.

def ranges_iteration(start_days, end_days)
  result = []

  (start_days..end_days).each do |day|
    (0..23).each do |hour|
      result << [day, hour]
    end
  end

  result.each { |arr| puts arr.inspect }
end

ranges_iteration(0, 1)

# [0, 0]

# [0, 1]

# [0, 2]

# [0, 3]

# [0, 4]

# [0, 5]

# [0, 6]

# [0, 7]

# [0, 8]

# [0, 9]

# [0, 10]

# [0, 11]

# [0, 12]

# [0, 13]

# [0, 14]

# [0, 15]

# [0, 16]

# [0, 17]

# [0, 18]

# [0, 19]

# [0, 20]

# [0, 21]

# [0, 22]

# [0, 23]

# [1, 0]

# [1, 1]

# [1, 2]

# [1, 3]

# [1, 4]

# [1, 5]

# [1, 6]

# [1, 7]

# [1, 8]

# [1, 9]

# [1, 10]

# [1, 11]

# [1, 12]

# [1, 13]

# [1, 14]

# [1, 15]

# [1, 16]

# [1, 17]

# [1, 18]

# [1, 19]

# [1, 20]

# [1, 21]

# [1, 22]

# [1, 23]
