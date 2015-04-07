require "tic_tac_toe/rules"

describe TicTacToe::Board do

  describe 'The columns' do
    it "has three columns" do
      board = TicTacToe::Board.new
      expect(board.columns.size).to eq(3)
    end

    it "returns the first column" do
      board = TicTacToe::Board.new
      board.set(1, "A")
      board.set(4, "B")
      board.set(7, "C")

      expect(board.columns[0]).to eq(["A", "B", "C"])
    end
  end

  describe "The rows" do
    it "has three rows" do
      board = TicTacToe::Board.new
      expect(board.rows.size).to eq(3)
    end

    it "returns the first row" do
      board = TicTacToe::Board.new
      board.set(1, "A")
      board.set(2, "B")
      board.set(3, "C")

      expect(board.rows[0]).to eq(["A", "B", "C"])
    end
  end

end
