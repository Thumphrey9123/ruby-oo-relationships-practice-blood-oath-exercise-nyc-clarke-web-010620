require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end
f1 = Follower.new("fred", 36, "life is sad")
f2 = Follower.new("tom", 35, "life is happy")
f3 = Follower.new("sam", 25, "life is death")
f4 = Follower.new("bob", 6, "life is bob")
f5 = Follower.new("terrance", 16, "life is shit")
f6 = Follower.new("john", 26, "life is amazing")
f7 = Follower.new("bb", 36, "life is round")
f8 = Follower.new("kate", 46, "life is different")
f9 = Follower.new("frank", 56, "life is running out of ideas")
f11 = Follower.new("anne", 66, "life is red")
f12 = Follower.new("teresa", 46, "life is blue")
f13 = Follower.new("ron", 33, "life is purple")
f14 = Follower.new("harry", 23, "life is rose")

c1 = Cult.new("DeathCult", 2008, "sunnyside,VT", "This is the way")
c2 = Cult.new("SadCult", 20011, "Mountainside,VT", "that is the way")
c3 = Cult.new("Wut", 1999, "Mountainside,VT", "What is the way")

b1 = Bloodoath.new(2016, f1, c2)
b2 = Bloodoath.new(2017, f2, c2)
b3 = Bloodoath.new(1999, f3, c2)
b4 = Bloodoath.new(2010, f4, c3)
b4 = Bloodoath.new(2010, f1, c3)
b2 = Bloodoath.new(2017, f2, c2)
b2 = Bloodoath.new(2017, f5, c2)
b2 = Bloodoath.new(2017, f6, c2)
b2 = Bloodoath.new(2017, f7, c2)
b2 = Bloodoath.new(2017, f8, c2)
b2 = Bloodoath.new(2017, f8, c3)
b2 = Bloodoath.new(2017, f8, c1)
b2 = Bloodoath.new(2017, f9, c2)
b2 = Bloodoath.new(2017, f13, c2)
b2 = Bloodoath.new(2017, f11, c2)
b2 = Bloodoath.new(2017, f12, c2)
b2 = Bloodoath.new(2017, f14, c2)
b2 = Bloodoath.new(2017, f12, c3)
b2 = Bloodoath.new(2017, f1, c3)
b2 = Bloodoath.new(2017, f4, c3)
b2 = Bloodoath.new(2017, f13, c3)
b2 = Bloodoath.new(2017, f11, c3)
b2 = Bloodoath.new(2017, f9, c3)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
