require "tic_tac_toe/rules"

describe TicTacToe::Rules do

  describe "Determing if the game has a winner" do
    before(:each) do
      @rules = TicTacToe::Rules.new
    end

    it "has no winner for an empty board" do
      expect(@rules).to_not have_winner([nil, nil, nil,
                                        nil, nil, nil,
                                        nil, nil, nil])
    end

    it "has a winner in the first row" do
      expect(@rules).to have_winner(["X", "X", "X",
                                    nil, nil, nil,
                                    nil, nil, nil])
    end

    it "does not have a winner in the first row when the marks are different" do
      expect(@rules).to_not have_winner(["X", "O", "X",
                                        nil, nil, nil,
                                        nil, nil, nil])
    end

    it "does not have a winner in the row when it is only partially filled" do
      expect(@rules).to_not have_winner(["X", nil, nil,
                                        nil, nil, nil,
                                        nil, nil, nil])
    end

    it "has a winner in the second row" do
      expect(@rules).to have_winner([nil, nil, nil,
                                     "X", "X", "X",
                                     nil, nil, nil])
    end

    it "does not have a winner in the second row when the marks are different" do
      expect(@rules).to_not have_winner([nil, nil, nil,
                                         "X", "O", "O",
                                         nil, nil, nil])
    end
  end

end
