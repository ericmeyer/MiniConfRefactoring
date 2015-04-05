module TicTacToe
  class Board
    def initialize(board_as_array)
      self.board_as_array = board_as_array
    end

    def row(number)
      starting_position = number * 3
      [starting_position, starting_position + 1, starting_position + 2].map do |position|
        board_as_array[position]
      end
    end

    def rows
      [row(0), row(1)]
    end

    private

    attr_accessor :board_as_array
  end

  class Rules

    def has_winner?(board_as_array)
      board = Board.new(board_as_array)
      has_winner_on_board?(board)
    end

    def has_winner_on_board?(board)
      board.rows.any? do |row|
        filled_with_the_same?(row)
      end
    end

    private

    def filled_with_the_same?(row)
      row.none?(&:nil?) && row.uniq.size == 1
    end

  end
end
