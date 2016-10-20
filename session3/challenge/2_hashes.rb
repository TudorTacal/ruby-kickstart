# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(number)
  hash = Hash.new
  for i in 1..number
    values = Array.new(i) {|x| x + 1}
    if i.odd?
      hash[i] = values.select{|x| x.even?}
      puts hash
    end
  end
  hash
end
p staircase 5







