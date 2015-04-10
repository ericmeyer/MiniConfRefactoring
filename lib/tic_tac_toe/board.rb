module TicTacToe
  class Board
    def initialize
      self.marks = {}
    end

    def rows
      3.times.map { |number| row(number) }
    end

    def columns
      3.times.map { |number| column(number) }
    end

    def diagonals
      [collect(1, 5, 9), collect(3, 5, 7)]
    end

    def set(position, mark)
      marks[position - 1] = mark
    end

    private

    def row(number)
      starting_position = number * 3 + 1
      collect(starting_position, starting_position + 1, starting_position + 2)
    end

    def column(number)
      starting_position = number + 1
      collect(starting_position, starting_position + 3, starting_position + 6)
    end

    def collect(*positions)
      positions.map do |position|
        marks[position - 1]
      end
    end

    attr_accessor :marks
  end
end
