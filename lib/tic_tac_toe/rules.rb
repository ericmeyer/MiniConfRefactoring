module TicTacToe
  class Board
    def initialize(board_as_array)
      self.board_as_array = board_as_array
    end

    def row(number)
      if number == 1
        [0, 1, 2].map {|position| board_as_array[position] }
      else
        [3, 4, 5].map {|position| board_as_array[position] }
      end
    end

    private

    attr_accessor :board_as_array
  end

  class Rules

    def has_winner?(board_as_array)
      board = Board.new(board_as_array)
      row_one = board.row(0)
      row_two = board.row(1)
      [row_one, row_two].any? do |row|
        filled_with_the_same?(row)
      end
    end

    private

    def filled_with_the_same?(row)
      row.none?(&:nil?) && row.uniq.size == 1
    end

  end
end
