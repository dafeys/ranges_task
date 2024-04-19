# Implement the find_prime(range) method, which receives the range range as an input parameter. The method should output those elements of the input range that are prime numbers.

# Advice. You can implement a separate method that will determine whether a number is prime and call it in the find_prime(range) method.


def find_prime(range)
  range.each do |num|
    puts(num) if prime?(num)
  end
end

def prime?(num)
  return false if num == 1

  i = 2

  while i < num
    return false if (num % i).zero?

    i += 1
  end

  true
end

# p prime?(1)

find_prime(1..10)

# 2

# 3

# 5

# 7
