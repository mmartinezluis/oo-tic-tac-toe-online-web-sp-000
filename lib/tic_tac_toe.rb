

class TicTacToe

  def initialize(board)
    @board=Array.new(9, " ")
  end

  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
  ]

  def display_board
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  def input_to_index(input)
    input.to_i - 1
  end

  def move(index, token)
    board[index] = token
  end

  def position_taken?(index)
    board[index] != " "
  end

  def valid_move?(index)
    (0..8).include?(index) && !position_taken?(index)
  end

  def turn_count
    count= 0
    board.each do |element|
      if element != " "
        count+= 1
      end
    end
    count
  end
  
    
    
