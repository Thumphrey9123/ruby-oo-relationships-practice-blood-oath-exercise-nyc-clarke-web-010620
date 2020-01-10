

class Cult

    attr_accessor :location, :slogan, :follower
    attr_reader :name, :founding_year
    
    @@all = []

    def initialize(name, founding_year, location, slogan)
        @name = name
        @founding_year = founding_year
        @location = location
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name_string)
        self.all.select {|cult| cult.name == name_string}
    end

    def recruit_follower(follower)
        #creates a new bloodoath
        follower.cult = self 
    end


    def population
        followers = []
        Bloodoath.all.each do |bloodoath| 
            if bloodoath.cult == self
                followers << bloodoath.follower
            end
        end
        followers
    end

    # def population
    #     Bloodoath.all.select {|bloodoath| bloodoath.cult == self}

    # end

    def self.find_by_location(location_string)
        self.all.select {|cult| cult.location == location_string}
    end

    def self.find_by_founding_year(founding_year_string)
        self.all.select {|cult| cult.founding_year == founding_year_string}
    end

    def average_age
        age_arr = []
        population.each do|follower| 
            age_arr << follower.age
        end
        age_arr.inject{|sum, num| sum + num}.to_f / age_arr.length
    end

    def my_followers_mottos
        mottos = []
        population.each{|follower| mottos << follower.motto}
        mottos
    end

    def self.least_popular
        sorted_arr = self.all.sort_by do |cult|
            cult.population.length
        end
        sorted_arr[0]
    end

    def self.most_popular_location
        locations_array = []
        self.all.each {|cult|locations_array << cult.location}

        location_hash = locations_array.inject(Hash.new(0)) {|hash, location| hash[location] += 1; hash}
        locations_array.max_by {|location| location_hash[location]}

    end

end