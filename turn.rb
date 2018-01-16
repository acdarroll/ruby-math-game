require ("./question")

class Turn

  attr_reader :askQuestion, :player

  def initialize(player)
    @player = player
    @question = Question.new
  end

  def askQuestion
    puts "----- NEW TURN -----"
    self.logMessage(@question.questionString)
    print "> "
    answer = $stdin.gets.chomp.to_i
    correct = self.correct?(answer)

    response = correct ? self.logMessage("Yes! You are correct") : self.logMessage("Seriously? No!")
    correct
  end

  def logMessage(message)
    puts "#{self.player.name}: " + message
  end

  def correct?(answer)
    answer == @question.answer
  end
end
