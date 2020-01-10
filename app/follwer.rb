

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
    


end