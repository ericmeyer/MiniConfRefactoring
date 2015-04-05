module TicTacToe
  class Rules

    def has_winner?(board)
      marks = [0, 1, 2].map {|position| board[position] }
      marks.none?(&:nil?) && marks.uniq.size == 1
    end

  end
end
