require "tic_tac_toe/rules"

describe TicTacToe::Rules do

  describe "Determing if the game has a winner" do
    before(:each) do
      @rules = TicTacToe::Rules.new
    end

    def board(board_as_array)
      board = TicTacToe::Board.new
      board_as_array.each.with_index do |mark, index|
        board.set(index + 1, mark) if mark
      end
      board
    end

    it "has no winner for an empty board" do
      expect(@rules).to_not have_winner(board([nil, nil, nil,
                                               nil, nil, nil,
                                               nil, nil, nil]))
    end

    it "has a winner in the first row" do
      expect(@rules).to have_winner(board(["X", "X", "X",
                                           nil, nil, nil,
                                           nil, nil, nil]))
    end

    it "does not have a winner in the first row when the marks are different" do
      expect(@rules).to_not have_winner(board(["X", "O", "X",
                                               nil, nil, nil,
                                               nil, nil, nil]))
    end

    it "does not have a winner in the row when it is only partially filled" do
      expect(@rules).to_not have_winner(board(["X", nil, nil,
                                               nil, nil, nil,
                                               nil, nil, nil]))
    end

    it "has a winner in the second row" do
      expect(@rules).to have_winner(board([nil, nil, nil,
                                           "X", "X", "X",
                                           nil, nil, nil]))
    end

    it "does not have a winner in the second row when the marks are different" do
      expect(@rules).to_not have_winner(board([nil, nil, nil,
                                               "X", "O", "O",
                                               nil, nil, nil]))
    end
  end

end
