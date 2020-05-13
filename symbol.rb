require 'pry'
class Fruit
   attr_accessor :name, :ripe  #creating 6 instance methods
   attr_reader :color
   def initialize(name:, color: "red", ripe:true) #expects 3 arguments
       self.name=(name) #needs the writer method to work
       @color = color
       @ripe = ripe
       #instance variable MUST be used if the variable will be read only
   end

   def change_color
      @color = 'purple'
   end
end

binding.pry
Fruit.new(color:'orange', name:'tangerine')