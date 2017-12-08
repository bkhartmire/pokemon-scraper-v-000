require 'pry'
class Pokemon
  @@all = []
  attr_reader :name, :type, :db, :id
  attr_accessor :hp
  def initialize(id:, name:, type:, db:, hp:60)
    @id = id
    @name = name
    @type = type
    @db = db
    @hp = hp
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
    Pokemon.new(id:row[0][0], name:row[0][1], type:row[0][2], db:db)
  end

  def alter_hp(new_hp)
    @hp = new_hp
  end
end
