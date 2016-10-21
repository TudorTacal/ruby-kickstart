# This problem is based off of example 2
# Modify it so that it also tracks a person's age and a quote
# Allow any of these to be set with a hash as well, but the block should overwrite the hash
#
#
# EXAMPLE:
#
# artist = Person.new :name => 'Prince' do |person|
#   person.age   = 47
#   person.quote = "Why don't you purify yourself in the waters of Lake Minnetonka?"
# end
#
# artist.name   # => "Prince"
# artist.age    # => 47
#
# artist.name = 'The Artist Formarly Known As Prince'
# artist.age  = 1999
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 1999
#
# artist.reinit
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 47


class Person
  attr_accessor :name, :quote, :age

  def initialize(args={}, &initializer)
     self.name  =  args[:name]
     self.quote =  args[:quote]
     self.age   =  args[:age]
    
    @initializer = (initializer || Proc.new {|x|} )
    @initializer.call self
  end

  def reinit
    @initializer.call self
  end
end

coder = Person.new :name => 'Tudor' do |nm|
  
  nm.name = 'Dan'
  nm.quote = 'The best coder in London'

end
p coder.name
p coder.name = 'Tudor'
coder.reinit
p coder.name
 alex = Person.new(:name => 'Alex')
p alex.name