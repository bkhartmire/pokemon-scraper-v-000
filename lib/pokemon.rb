class Pokemon
  @@all = []
  attr_accessor :name, :type, :db, :id
  def initialize(id:, name:, type:, db:)
    @id = id
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
