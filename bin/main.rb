#!/usr/bin/env ruby

puts "Welcome to TIC TAC TOE Game"
def create_player
    puts "Please Enter the name of the first player"
    player1 = gets.chomp()
    puts "Welcome " + player1
    puts "Please Enter the name of the second player"
    player2 = gets.chomp()
    puts "Welcome " + player2
end
create_player

def player_key
    puts player1 
end