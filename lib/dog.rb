class Dog
  attr_reader :name

  @@all = []

  def initialize(name = "Winston")
    @name = name
    @@all << self
  end

  def self.all
    puts @@all.map{|dog| dog.name}
  end

  def self.all=(new)
    @@all = new
  end

  def self.clear_all
    self.all = []
  end

end
