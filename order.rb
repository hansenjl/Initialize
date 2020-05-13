require 'pry'
class Fruit
   attr_accessor :name, :color, :ripe  #creating 6 instance methods
   def initialize(new_name="apple", color="red", ripe=true) #expects 3 arguments
       @name = new_name
       @color = color
       @ripe = ripe
   end
end

Fruit.new #gave 0 arguments
Fruit.new('apple', 'red', false)
Fruit.new('pear', 'green')
Fruit.new('strawberry', false)
