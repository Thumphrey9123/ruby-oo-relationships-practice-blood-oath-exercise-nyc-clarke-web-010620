require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end
f1 = Follower.new("fred", 36, "life is sad")
f2 = Follower.new("tom", 35, "life is happy")
f3 = Follower.new("sam", 25, "life is death")
f4 = Follower.new("larry", 6, "life is")


c1 = Cult.new("DeathCult", 2008, "sunnyside,VT", "This is the way")
c2 = Cult.new("SadCult", 20011, "Mountainside,VT", "that is the way")
c3 = Cult.new("Wut", 1999, "Mountainside,VT", "What is the way")

b1 = Bloodoath.new(2016, f1, c2)
b2 = Bloodoath.new(2017, f2, c2)
b3 = Bloodoath.new(1999, f3, c2)
b4 = Bloodoath.new(2010, f4, c3)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
