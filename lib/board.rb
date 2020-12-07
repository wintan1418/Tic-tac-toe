class Board
  attr_reader :key, :moves

  def initialize
    @key = Array.new(9)
    @moves = []
  end

  def update_board(picked_cell, player)
    @key[picked_cell] = player.key
  end

  def board_display
    i = 0
    while i < board.length
      print "#{board[i]} |" if i % 3 != 2
      puts board[i].to_s if i % 3 == 2
      i += 1
    end
  end
end
