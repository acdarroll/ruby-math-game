class Player

  attr_accessor :lives
  attr_reader :name

  def initialize(name)
    @lives = 3
    @name = name
  end

  def removeLife
    self.lives -= 1
  end

  def dead?
    self.lives <= 0 ? true : false
  end

end