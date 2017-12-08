class Pokemon
  @@all = []
  attr_accessor :name, :type, :db
  def initialize(name, type, db)
    @name = name
    @type = type
    @db = db
    @@all << self
  end

  def self.all
    @@all
  end

  def self.save(name, type, db)


  end

  def self.find
  end
end
