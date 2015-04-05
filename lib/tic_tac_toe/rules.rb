module TicTacToe
  class Rules

    def has_winner?(board)
      marks = [0, 1, 2].map {|position| board[position] }
      marks.uniq.compact.size == 1
    end

  end
end
