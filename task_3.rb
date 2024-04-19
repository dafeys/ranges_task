# Implement the reverse_range(r, step) method, which takes the range r as an input parameter, the step parameter determines the step of iteration over the range. The method should return the range r transformed into an array in which the elements are placed in the reverse order with step step.


def reverse_range(r, step)
  array = []

  (r.first..r.last).to_a.reverse.each_slice(step) do |num|
    array << num.first
  end

  array
end

# def reverse_range(r, step)
#   result = []
#   current = r.last
#   while current >= r.first
#     result << current if r.cover?(current)
#     current -= step
#   end
#   result
# end


p reverse_range((1..20), 2) # [20, 18, 16, 14, 12, 10, 8, 6, 4, 2]
p reverse_range((1..20), 3) # [20, 17, 14, 11, 8, 5, 2]  =>  [18, 15, 12, 9, 6, 3]
p reverse_range((0..50), 5) # [50, 45, 40, 35, 30, 25, 20, 15, 10, 5, 0]
p reverse_range((0..100), 10) # [100, 90, 80, 70, 60, 50, 40, 30, 20, 10, 0]
p reverse_range((-20..20), 2) # [20, 18, 16, 14, 12, 10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -12, -14, -16, -18, -20]
p reverse_range((-50..50), 5) # [50, 45, 40, 35, 30, 25, 20, 15, 10, 5, 0, -5, -10, -15, -20, -25, -30, -35, -40, -45, -50]
