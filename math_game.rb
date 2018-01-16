require "./player"
require "./turn"

class MathGame

  attr_accessor :currentPlayer
  attr_reader :player1, :player2

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @currentPlayer = self.player1
    @gameOver = false
  end

  def start
    self.newTurn
    while(!@gameOver)
      self.newTurn
    end
  end

  def newTurn
    turn = Turn.new(@currentPlayer)
    correct = turn.askQuestion
    self.currentPlayer.removeLife if !correct
    self.logLives
    if self.currentPlayer.dead?
      self.end(self.nextPlayer)
    else
      self.currentPlayer = self.nextPlayer
    end
  end

  def nextPlayer
    self.currentPlayer.name == self.player1.name ? @player2 : @player1
  end

  def logLives
    puts "P1: #{@player1.lives}/3 vs. P2: #{@player2.lives}/3"
  end

  def end(winner)
    @gameOver = true
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

end

game = MathGame.new
game.start
