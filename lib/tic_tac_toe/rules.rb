module TicTacToe
  class Rules

    def has_winner?(board)
      row_one = [0, 1, 2].map {|position| board[position] }
      row_two = [3, 4, 5].map {|position| board[position] }
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
