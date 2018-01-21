require_relative 'player'
require_relative 'computer'

class Game

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  attr_reader :player, :computer, :result

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def rps
    computer.makes_choice
    win = { ROCK: :SCISSORS, PAPER: :ROCK, SCISSORS: :PAPER }
    return @result = :draw if player.choice == computer.choice
    @result = win[player.choice] == computer.choice ? :win : :lose
  end

end

#
# RULES = { rock: [scissors, lizard],
#           paper: [:rock, :spock],
#           scissors: [:paper, :lizard],
#           lizard: [:paper, :spock],
#           spock: [:rock, :scissors] }
