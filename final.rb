 require 'pry'
# class Fruit

#     def initialize
#         puts "inside the initilize method"
#         "x"
#     end
# end

#  binding.pry
# puts Fruit.new


#  what type of method is .new?
#  how can we tell?
#  where did it come from?
#  what does it return?
#  what is it doing?


# what type of method is .initialize?
# how can we tell?
# does it matter what it returns? Why or why not?
# what is the purpose on writing a custom initialize method?

###--- WITH NORMAL ARGUMENTS ---###

# class Fruit
#     attr_accessor :name, :color, :ripe

#     def initialize(name, color='red', ripe=true)
#         @name = name
#         @color = color
#         @ripe = ripe
#     end
# end

# Fruit.new('apple', 'red', false)
# Fruit.new('pear', 'green')
# Fruit.new('strawberry', false)

###---- WITH SYMBOLS ---###

# class Fruit

#     def initialize(name:'n/a', color:'red', ripe:true)
#         @name = name
#         @color = color
#         @ripe = ripe
#     end
# end
# binding.pry

# Fruit.new
# Fruit.new(name: 'apple', color: 'red', ripe: false)
# Fruit.new(color: 'red', ripe: false, name: 'apple')
# Fruit.new(name: 'pear', color: 'green')
# Fruit.new(ripe: false, name: 'strawberry')

###--- WITH A HASH ---###
# class Fruit

#     def initialize(attr_hash={})
#         # binding.pry
#         @name = attr_hash[:name]
#         @color = attr_hash[:color]
#         @ripe = attr_hash[:ripe]
#     end
# end
# binding.pry
# Fruit.new
# Fruit.new({name: 'apple', color: 'red', ripe: false})
# Fruit.new({color: 'red', ripe: false, name: 'apple'})
# Fruit.new({name: 'pear', color: 'green'})
# Fruit.new({ripe: false, name: 'strawberry'})


###--- WITH A HASH & THE SEND METHOD ---###
# class Fruit
#     attr_accessor :name, :color, :ripe

#     def initialize(attr_hash={})
# #         # binding.pry
# #         name = attr_hash[:name]
# #         self.color = attr_hash[:color]
# #         self.ripe = attr_hash[:ripe]
#           attr_hash.each do |key, value|
#               self.send("#{key}=", value)
#           end
#     end
# end
# binding.pry
# Fruit.new
# Fruit.new({name: 'apple', color: 'red', ripe: false})
# Fruit.new({color: 'red', ripe: false, name: 'apple'})
# Fruit.new({name: 'pear', color: 'green'})
# Fruit.new({ripe: false, name: 'strawberry'})



### FINAL QUESTIONS ###

# What does the .send method do?
# What does the .send method accept as arguments?
# When you see name = name in the initialize method, what is really happening?
# What are the benefits to type of initialize method that we used today?
