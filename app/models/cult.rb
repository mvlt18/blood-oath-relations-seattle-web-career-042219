class Cult

  attr_accessor :name, :location, :founding_year, :slogan

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end

  def self.all
    @@all
  end

  def recruit_follower(follower)
    BloodOath.new(self, follower)
  end

  def cult_population
    BloodOath.all.select do |oath|
      oath.cult == self
    end.count
  end

  def self.find_by_name(string)
    Cult.all.find do |cult|
      cult.name == string
    end
  end

  def self.find_by_location(string)
    Cult.all.find do |cult|
      cult.location == string
    end
  end

  def self.find_by_founding_year(year)
    Cult.all.find do |cult|
      cult.founding_year == year
    end
  end

  def followers
    oaths = BloodOath.all.map do |oath|
      oath.cult == self ? oath.follower : nil
    end.compact
  end

  def average_age
    age_arr = self.followers.map do |follower|
       follower.age
     end
     age_arr.sum.to_f/age_arr.count.to_f
  end

  def my_followers_mottos
    age_arr = self.followers.map do |follower|
       follower.life_motto
     end
  end

  def self.least_popular
    array_len = @@all.map do |cult|
      cult.followers.length
    end

    @@all.find do |cult|
      array_len.min == cult.followers.count
    end
  end



end
