require 'pry'
class Pokemon
  @@all = []
  attr_reader :name, :type, :db, :id
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
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
  end

  def self.find(id, db)
    row = db.execute("SELECT * FROM pokemon WHERE id = ?;", id)
    binding.pry
    Pokemon.new(id:row[0])
  end
end

Pokemon.find(1)
