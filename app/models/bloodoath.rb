class BloodOath

  attr_accessor :initiation_date, :cult, :follower

  @@all = []

  def initialize(initiation_date, cult, follower)
    @initiation_date = Time.now.utc.to_s[0..9]
    @cult = cult
    @follower = follower
    @@all << self
  end

  def self.all
    @@all
  end

end
