require_relative './player.rb'
require_relative './board.rb'
class Game
    WINNING_COMBINATION = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]].freeze
    attr_accessor :combination, :player1, :player2
    def initialize
        @combination = []
        @player1 = Player.new(nil,"X")
        @player2 = Player.new(nil,"O")
    end
end