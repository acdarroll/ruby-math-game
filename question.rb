class Question

  attr_reader :answer

  def initialize
    @num1 = self.randomInt
    @num2 = self.randomInt
    @answer = @num1 + @num2
  end

  def randomInt
    [*1..20].sample
  end

  def questionString
    "What does #{@num1} plus #{@num2} equal?"
  end
end