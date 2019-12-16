#!/usr/bin/env ruby

require '../lib/game_logic.rb'

# UserInterface --------------------------------------------------------------------------- #
class UserInterface
  attr_reader :user_interface

  def initialize
    @user_interface = user_interface
  end

  def instructions
    puts "game instructions: "
    puts "use 1-9 keys to make your turn.\n\n"
    puts "1|2|3"
    puts "4|5|6"
    puts "7|8|9"
  end

  def get_names(players)
    names = []
    players.each_with_index do |player, i|
      puts "\n\nplease enter the name of player #{i+1}:"
      name = gets.chomp.downcase
      while name == ""
        puts "invalid input. please enter a valid name:"
        name = gets.chomp.downcase
      end
      names << name
    end
    names
  end

  def display(board)
    puts board[0..2].join("|")
    puts board[3..5].join("|")
    puts board[6..8].join("|")
  end

  def assign_piece(players)
    puts "\n\n#{players[0].name} has been randomly assigned to #{players[0].team}."
    puts "therefore, #{players[1].name} has been assigned to #{players[1].team}."
  end

  def first_turn(player)
    puts "\nThe computer has randomly decided that #{player.name} will go first.\n\n"
  end

  def get_turn(player, board)
    puts "\n#{player.name}, please take your turn:"
    turn = gets.chomp
    until input_valid?(turn) && board.move_valid?(turn.to_i)
      puts "invalid input. Please use keys 1-9 to choose an empty position.\n\n"
      turn = gets.chomp
    end
    turn.to_i
  end

  def input_valid?(turn)
    ("1".."9").to_a.include?(turn)
  end

  def declare_win(player, board)
    puts "\ngame over!"
    board.win?(player.team) ? (puts "\ncongratulations, #{player.name}!") : (puts "\nit's a tie!")
  end

  def play_new_game?(game_on)
    #until
      puts "\nplay a new game? (y or n)"
      new_game = gets.chomp
      if new_game == 'y' 
        game_on = true
      else
        game_on =false
      end
    #end
  end

end

# start the game ---------------------------------------------------------------------- #

game = Game.new
game.play


#user_interface = UserInterface.new
#user_interface.instructions
