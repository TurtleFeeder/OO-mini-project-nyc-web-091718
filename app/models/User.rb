class User
  attr_reader :name
  @@all =[]

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

end #end User class
