# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"

def print_list_in_reverse(list)
  array = []
  while list
    array << list[:data]
    list = list[:next]
  end
   puts array.reverse 
end
head = {:data => 1, :next => nil}
head = {:data => 2, :next => head}
head = {:data => 3, :next => head}
head = {:data => 4, :next => head}
head = {:data => 5, :next => head}
head = {:data => 6, :next => head}

print_list_in_reverse head