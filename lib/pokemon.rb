class Pokemon
  @@all = []
  
  def initialize(name, type, db)
    @name = name
    @type = type
    @db = db
  end

  def self.all
    @@all
  end
  
  def self.save
  end

  def self.find
  end
end
