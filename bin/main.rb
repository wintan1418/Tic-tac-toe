#!/usr/bin/env ruby
 def create_player
    puts "Please enter name of the first player"
    player1 = gets.chomp()
    puts "Welcome " + player1
    puts "Please enter name of the second player"
    player2 = gets.chomp()
    puts "Welcome " + player2

 end
 create_player

 def player_key
    puts " Choose your key"
    key1 = gets.chomp()
    puts "Thanks for choosing " + key1 
    puts " Choose your key"
    key2 = gets.chomp()
    puts "Thanks for choosing " + key2
 end
 player_key
 
 def board_display
    puts "Here is the Board"
    board = Array.new(9,0)
    i = 0
    while i<board.length
        print "#{board[i]} |" if i%3!=2
        puts "#{board[i]} " if i%3==2
        i+=1
 end
end
 board_display

 def play
    create_player()
    combination = []
    WINNING_COMBINATION = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]].freeze
    puts "Please enter your position"
    x = gets.chomp.to_i
    player1.combination.push(x)
    puts "Please enter your position"
    x = gets.chomp.to_i
    player2.combination.push(x)
 end