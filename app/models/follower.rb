

class Follower
    
    attr_accessor :name, :age, :life_motto
    
    @@all = []
    
    def initialize(name,age,life_motto)
        @name = name    
        @age = age
        @life_motto = life_motto
        @@all.push(self)
    end
    
    def cults
        BloodOath.all.select do |x|
            x.follower == self
        end
    end
    
    def join_cult(cult)
        BloodOath.new(cult,self)
    end
    
    def self.of_a_certain_age(age)
        BloodOath.all.select do |bo|
            bo.follower.age >= age
        end
            
    end
    
    def self.all
        @@all
    end
    
    
end
