require "./bin/main.rb"
require "./lib/game_logic.rb"

# Board --------------------------------------------------------------------- #
RSpec.describe Board do
  let(:board) { Board.new }

  # initialize
  describe "#initialize" do
    it "initialize empty board to 9 - items" do
      expect(board.board).to eql( ["-", "-", "-", "-", "-", "-", "-", "-" ,"-"] )
    end

    it "cannot initialize empty board diferent from 9 - items" do
      expect(board.board).not_to eql( [" ", " ", " ", " ", " ", " ", " ", " " ," "] )
    end
  end

  # move_valid?
  describe "#move_valid?" do
    it "the move have to be beteen 1 and 9" do
      expect(board.move_valid?(1)).to eql(true)
      expect(board.move_valid?(11)).to eql(false)
    end
    
    it "the move can only be placed on empty item" do
      board.board = ["X", "X", "X", "-", "-", "-", "-", "-" ,"-"]
      expect(board.move_valid?(5)).to eql(true)
    end

    it "the move can not be placed on a assined item" do
      board.board = ["X", "X", "X", "-", "-", "-", "-", "-" ,"-"]
      expect(board.move_valid?(3)).not_to eql(true)
    end
  end
  
  # win_positions
  describe "#win_positions" do
    it "the array given must match with one of the winner arrays on the program" do
      expect(board.win_positions.any?( [0, 1, 6] )).to eql(false) # -> not a winner row
      expect(board.win_positions.any?( [1, 4, 7] )).to eql(true) # -> a winner row
    end
  end

  # win?
  describe "#win?" do
    it "win if team is in a win possition" do
      board.board = ["X", "X", "X", "-", "-", "-", "-", "-" ,"-"]
      expect(board.win?("X")).to eql(true)
    end
    
    it "does not return win if team is not in a win possition" do
      board.board = ["X", "X", "X", "-", "-", "-", "-", "-" ,"-"]
      expect(board.win?("O")).not_to eql(true)
    end
  end

  # tie?
  describe "#tie?" do
    it "its a tie if the board doews not contain -" do
      board.board = ["X", "X", "O", "O", "X", "X", "O", "O" ,"X"]
      expect(board.tie?).to eql(true)
    end
  
    it "not a tie if the board contain -" do
      board.board = ["-", "X", "O", "O", "X", "X", "O", "O" ,"X"]
      expect(board.tie?).not_to eql(true)
    end
  end

end

# UserInterface --------------------------------------------------------------------- #
RSpec.describe UserInterface do
  let(:ui) { UserInterface.new }

  # get_names
  describe "#get_names" do
    it "the value given must include letters, not just numbers / special characters" do
      expect(gnValidation).to eql(true) # -> the expected value is true if the condition above is met, otherwise fails
    end
  end

  # method for 'get_names'
  def gnValidation
    names = ui.get_names([Player.new, Player.new])
    return true unless names.any? { |name| name == "" || !(name.match(/[a-z]/)) }
    false
  end

  # get_turn
  describe "#get_turn" do
    player = Player.new
    board = Board.new
    it "the value given should be between numbers 1 and 9 with no other character or space/tab. \n also the number must not be taken as a position already" do
      expect(ui.get_turn(player, board)).to eql(11)
    end
  end  

  # input_valid?
  describe "#input_valid?" do
    it "the value given should be between numbers 1 and 9 with no other character or space/tab. \n also the number must not be taken as a position already" do
      expect(ui.input_valid?("qwe")).to eql(false)
    end
  end

end
