

class BloodOath
    
    attr_accessor :cult, :follower, :initiation_date
    @@all = []
    
    def initialize(cult,follower, date = Time.now.to_s.split[0] )
        @cult = cult
        @follower = follower
        @initiation_date = date
        @@all.push(self)
    end
    
    def self.all
        @@all
    end
    
end