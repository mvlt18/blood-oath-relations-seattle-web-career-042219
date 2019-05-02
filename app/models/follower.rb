class Follower

  attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def self.all
    @@all
  end

  def cults
  BloodOath.all.map do |oath|
    #oath.follower == self ? oath.cult : nil
    oath.follower == self ? oath.cult : nil
    # if oath.follower == self
    #   oath.cult
    # end
    #
    # oaths.map do |oath|
    #   oath.cult
    # end
  end.compact
end

def self.of_a_certain_age(age)
  @@all.select do |follower|
    follower.age >= age
  end
end

end
