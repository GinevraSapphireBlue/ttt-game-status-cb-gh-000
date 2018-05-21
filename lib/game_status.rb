# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], [3,4,5], [6,7,8],
  [0,3,6], [1,4,7], [2,5,8],
  [0,4,8], [2,4,6]
  ]
  
def won? (board)
  WIN_COMBINATIONS.each do |combination|
    char_in_1st_position = board[combination[0]]
    next if char_in_1st_position != 'O' && char_in_1st_position != 'X'
    if board[combination[0]] == board[combination[1]] && board[combination[0]] == board[combination[2]]
      return combination
    end
  end
end