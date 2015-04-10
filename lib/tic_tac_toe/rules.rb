module TicTacToe
  class Rules

    def has_winner?(board)
      candidate_combinations(board).any? do |marks|
        filled_with_the_same?(marks)
      end
    end

    private

    def candidate_combinations(board)
      board.rows + board.columns + board.diagonals
    end

    def filled_with_the_same?(marks)
      marks.none?(&:nil?) && marks.uniq.size == 1
    end

  end
end
