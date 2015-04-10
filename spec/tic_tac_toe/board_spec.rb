require "tic_tac_toe/board"

describe TicTacToe::Board do

  before(:each) do
    @board = TicTacToe::Board.new
  end

  describe 'The columns' do
    it "has three columns" do
      expect(@board.columns.size).to eq(3)
    end

    it "returns the first column" do
      @board.set(1, "A")
      @board.set(4, "B")
      @board.set(7, "C")

      expect(@board.columns[0]).to eq(["A", "B", "C"])
    end

    it "returns the second column" do
      @board.set(2, "A")
      @board.set(5, "B")
      @board.set(8, "C")

      expect(@board.columns[1]).to eq(["A", "B", "C"])
    end

    it "returns the third column" do
      @board.set(3, "A")
      @board.set(6, "B")
      @board.set(9, "C")

      expect(@board.columns[2]).to eq(["A", "B", "C"])
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

  describe 'The diagonals' do
    it "has two diagonals" do
      expect(@board.diagonals.size).to eq(2)
    end

    it "returns the first diagonal" do
      @board.set(1, "A")
      @board.set(5, "B")
      @board.set(9, "C")

      expect(@board.diagonals[0]).to eq(["A", "B", "C"])
    end

    it "returns the second diagonal" do
      @board.set(3, "A")
      @board.set(5, "B")
      @board.set(7, "C")

      expect(@board.diagonals[1]).to eq(["A", "B", "C"])
    end
  end

end
