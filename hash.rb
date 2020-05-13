require 'pry'
class Fruit
   attr_accessor :name, :ripe  #creating 6 instance methods
   attr_reader :color
   def initialize(att_hash={}) #expects 3 arguments
        binding.pry
        if att_hash[:name]
            @name = att_hash[:name]
        else
            @name = "apple"
        end
       @color = att_hash[:color]
       @ripe = att_hash[:ripe]
       @other = att_hash[:other]
       #instance variable MUST be used if the variable will be read only
   end
end

Fruit.new
Fruit.new({color:'orange', name:'tangerine'})
Fruit.new({color: 'red', ripe: false, name: 'apple', price: 14})