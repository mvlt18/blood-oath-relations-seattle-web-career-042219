require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("Hailbop", "PA", 1950, "Praise the Comet!")
cult2 = Cult.new("Sneaker", "NY", 1970, "New kicks!")

ella = Follower.new("Ella", 28, "Code all day")
jens = Follower.new("Jens", 25, "Code all night")

oath1 = BloodOath.new("2018-05-02", cult1, ella)
oath2 = BloodOath.new("2018-05-05", cult1, jens)
oath3 = BloodOath.new("2020-05-05", cult2, jens)

puts cult1.cult_population

puts Cult.find_by_name("Hailbop")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
