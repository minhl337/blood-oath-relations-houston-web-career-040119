require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


cult1 = Cult.new("c1","tx",1999,"hi")
cult2 = Cult.new("c2","ok",1800,"nah")
cult3 = Cult.new("c3","nv",1767,"sup")

follower1 = Follower.new("f1",12,"ok")
follower2 = Follower.new("f2",22,"miles")
follower3 = Follower.new("f3",33,"third")

ba1 = BloodOath.new(cult2, follower3)
ba2 = BloodOath.new(cult2, follower1)
ba3 = BloodOath.new(cult1, follower2)
ba4 = BloodOath.new(cult3, follower1)
ba5 = BloodOath.new(cult1, follower1)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
