module TicTacToe
  class Board
    def initialize
      self.marks = {}
    end

    def rows
      [row(0), row(1), row(2)]
    end

    def columns
      [
        [marks[0], marks[3], marks[6]],
        2,
        3
      ]
    end

    def set(position, mark)
      marks[position - 1] = mark
    end

    private

    def row(number)
      starting_position = number * 3 + 1
      [starting_position, starting_position + 1, starting_position + 2].map do |position|
        marks[position - 1]
      end
    end

    attr_accessor :marks
  end

  class Rules

    def has_winner?(board)
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
