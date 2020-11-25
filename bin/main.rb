#!/usr/bin/main ruby
# frozen_string_literal: true

class Player
  attr_accessor = :name, :key, :player1, :player2
  def initialize(name, key, player1, player2)
    @name = name
    @key = key
    @player1 = Player.new(nil, 'x')
    @player2 = Player.new(nil, 'o')
  end

  def create_player
    puts 'input your name as the first player'
    @player1.name = gets.chomp
    puts 'input your name as the second player'
    @player2.name = gets.chomp
  end
end
p = Player.new
p.create_player
