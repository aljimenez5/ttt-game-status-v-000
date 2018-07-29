require 'pry'

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def won?(board)
  board_row = []
  WIN_COMBINATIONS.each do |row_win|
    row_win.each do |row_win_index|
      until board_row == row_win  
        if board[row_win_index] == "X"
          board_row << row_win_index
        elsif board[row_win_index] == "O"
          board_row << row_win_index
        else
          return false
        end
      end
    end
  return board_row
  end
end