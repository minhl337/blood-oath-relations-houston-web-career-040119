
class Cult
    
    attr_accessor :name, :location, :founding_year, :slogan
    
    @@all = []
    
    def initialize(name,location,founding_year,slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all.push(self)
    end
    
    def recruit_follower(follower)
        BloodOath.new(self, follower)
    end
    
    def cult_population
        BloodOath.all.select do |bl|
            bl.cult == self
        end.length
    end
    
    def self.find_by_name(string)
        BloodOath.all.map do |bl|
            if bl.cult.name == string
                bl.cult
            end.uniq
        end
    end
    
    def self.find_by_location(string)
        BloodOath.all.map do |bl|
            if bl.cult.location == string
                bl.cult
            end
        end
    end
    
    def self.find_by_founding_year(year)
        BloodOath.all.map do |bl|
            if bl.cult.founding_year == year
                bl.cult
            end
        end
    end
    
    def self.all
        @@all
    end
    
    def average_age
       ok = BloodOath.all.map do |bo|
            if bo.cult = self
                bo.follower.age
            end
        end
            ok.sum/ok.length
    end

    def my_followers_mottos
        BloodOath.all.map do |bo|
            if bo.cult == self
                bo.follower
            end
        end.life_motto
    end

    def self.least_popular
BloodOath.all.min_by do |x| x.cult.cult_population end.cult
    end

    def self.most_common_location
        BloodOath.all.max_by do |bo|
            
        end
    end
    
end