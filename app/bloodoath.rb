

class Bloodoath

    attr_accessor :follower, :cult
    attr_reader :initiation_date
    
    @@all = []

    def initialize(initiation_date, follower, cult)
        @initiation_date = initiation_date
        @follower = follower
        @cult = cult


        @@all << self
    end

    def self.all
        @@all
    end

    def self.first_oath
        @@all[0]
    end


end