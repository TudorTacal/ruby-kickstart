# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
# 
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  # your code goes here
  input=gets.chomp.scan(/-?\d+/).map{|x| x.to_f}
  puts "#{input[0]+input[1]} #{input[0]-input[1]} #{input[0]*input[1]} "
end

