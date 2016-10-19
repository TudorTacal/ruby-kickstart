# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  
  attr_accessor :bottles  
  
  def initialize(bottles)
    bottles = 99 if bottles.to_i > 99
    bottles = 0  if bottles.to_i < 0
    @bottles=bottles
    
  end
  
  def transform(number)
    first     = ['zero','one','two','three','four','five','six','seven','eight','nine'].map{|x| x.capitalize}
    teenagers = ['ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen'].map{|x| x.capitalize}
    bigger    = ['twenty','thirty','fourty','fifty','sixty''seventy','eighty','ninety'].map{|x| x.capitalize}
    result    = ""
    
    
    f  = number/10
    s  = number%10 
    
    if number.between?(0,9)
      result = first[number]
    elsif number.between?(10,19)
      result = teenagers[number-10]
    else
        result =  bigger[number-2] if s==0
        result = "#{bigger[f-2]}-#{first[s].downcase}" if f.between?(1,10) && s.between?(1,10)
    end
  end
  
   def print_song
     bottles=@bottles
     return String.new if bottles==0
    while bottles >=0
    transform(bottles)!="One"? plural = "bottles" : plural = "bottle"
  
      puts "#{transform(bottles)} #{plural} of beer on the wall," 
      puts "#{transform(bottles)} #{plural} of beer,"
      puts "Take one down, pass it around,"
      puts "#{transform(bottles-1)} #{plural} of beer on the wall."
      break if bottles==1
      puts "..."
      bottles-=1
    end
  end
end
song = BeerSong.new 1

song.print_song
