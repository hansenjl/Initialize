require 'pry'
class Fruit
   attr_accessor :name
   def initialize
       puts "in initialize"     # returns nil
   end
end

binding.pry
Fruit.new


#  what type of method is .new?
    # Class method
#  how can we tell?
    # look at what it's called on - it is a called on a class
#  where did it come from?
    # built in method that inately is able to be called on any Class
#  what does it return?
    # => #<Fruit:0x007fb5a7963ef8>
    # a newly created instance
#  what is it doing?
    # creating a new instance
    # call the initialize method



# what type of method is .initialize?
    # a private instance method
# how can we tell?
   # it is not defined with the keyword self before the method name
# does it matter what it returns? Why or why not?
    # it does not matter b/c we don't call it
# what is the purpose on writing a custom initialize method?
   # you have info that you want to assign as attribute when the instance is "born" or "initialized"
   # to keep track of all instances we create