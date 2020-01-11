

class Follower

    attr_accessor :motto, :cult
    attr_reader :name, :age
    
    @@all = []

    def initialize(name, age, motto)
        @name = name
        @age = age
        @motto = motto
        @@all << self
    end

    def self.all
        @@all
    end

    
    def join_cult(cult)
        Bloodoath.new(2020,self,cult)
    end

    def cults
        cults = []
        Bloodoath.all.each do |bloodoath| 
            if bloodoath.follower == self
                cults << bloodoath.cult
            end
        end
        cults
    end
    
    def my_cults_slogans
        cults_arr = []
        cults.each{|cult| cults_arr << cult.slogan}
        cults_arr
    end
    
    
    def self.of_a_certain_age(age_num)
        self.all.select {|follower| follower.age == age_num}
    end
    
    # def self.all
    #     Follower.all.select {|follower| bloodoath.cult == self}
    # end

    # def self.find_by_location(location_string)
    #     self.all.select {|cult| cult.location == location_string}
    # end

    # def self.find_by_founding_year(founding_year_string)
    #     self.all.select {|cult| cult.founding_year == founding_year_string}
    # end
    
    def self.most_active_cultist
        follower_arr = Bloodoath.all.map{|bloodoath| bloodoath.follower}
        # follower_hash = follower_arr.reduce(Hash.new(0)) {|hash, follower| hash[follower] += 1; hash}
        follower_arr.max_by {|cultist| follower_arr.count(cultist)}
    end

    def self.top_ten_followers
        follower_arr = Bloodoath.all.map{|bloodoath| bloodoath.follower}
        follower_hash = follower_arr.reduce(Hash.new(0)) {|hash, follower| hash[follower] += 1; hash}
        #now need to find out how to get the top ten most freuent....
    end

end