def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#coverts a user's place on the board to the index integer
def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end

#checks the number to see if 1) the position is already taken and 2)it is an actual number
def valid_move?(board, index)
  def position_taken?(array, ind)
    if array[ind] == " " || array[ind] == "" || array[ind] == nil
      return false
    else
      return true
    end
  end

  def on_board?(num)
    if num.between?(0, 8) == true
      return true
    else
      return false
    end
  end

  if (position_taken?(board, index)) == false && (on_board?(index) == true)
    return true
  else
    return false
  end
end

#Takes a users num and the board, and places the X or O char in that position
def move(board, index, character = "X")
  board[index] = character
  return board
end

def turn (board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

def play(board)
  i = 0
  while i < 9
    i += 1
    turn(board)
  end
end

#Tic Tac Toe Play loop

def turn_count(turn)
  move_count = []
  turn.each do |unit|
    if unit == "X" || unit == "O"
      move_count.push(1)
    end
  end
  move_count.length.to_i
end

def current_player(board)
    num = turn_count(board)
    if num % 2 == 0
      return "X"
    else
      return "O"
    end
=======

#Tic Tac Toe Play loop

def turn_count(board)
  counter = 0
  board.each do |spaces|
    if spaces == "X" || spaces == "O"
      Counter += 1
    end
  end
  counter
end

def current_player(board)
  turn_count(board) % 2 == 0 ? "X" : "0"
end
