class Person

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # def name
  #   @name
  # end

  # def name=(name)
  #   @name = name
  # end

end

p = Person.new('L. Ron')
p.name = "Jeremy"
puts p.name