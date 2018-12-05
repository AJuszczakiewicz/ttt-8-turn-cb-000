def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0,9) && tile_empty?(board, index)
    return true
  else return false
  end
end

def tile_empty?(board, index)
    return board[index] != "X" && board[index] != "O" ? true : false
  end



def move(board, index, token="X")
  if valid_move?(board, index)
    board[index] = token
  end
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  until valid_move?(board, index)
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
  end
  move(border, index)
  display_board(board)
end

def ask_for_input
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
end

def input_to_index(input)
  input.to_i - 1
end
