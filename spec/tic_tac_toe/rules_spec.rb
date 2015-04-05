require "tic_tac_toe/rules"

describe TicTacToe::Rules do

  describe "Determing if the game has a winner" do
    it "has no winner for an empty board" do
      rules = TicTacToe::Rules.new
      expect(rules).to_not have_winner([nil, nil, nil,
                                        nil, nil, nil,
                                        nil, nil, nil])
    end
  end

end
