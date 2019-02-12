#Function for generating checkerboard.
def generate_board(boardSize, squareSize)

  #New line for readability
  puts "\n"

  gridString = ""

  #Boolean for indicating whether to fill squares with "#" or " "
  black = false

  #Creates the rows of the board
  boardSize.times do

    #Switches square colour at end of each row
    black = !black

    #Creates top border of each row
    gridString << "+"
    gridString << ("#{("-" * squareSize) + "+"}" * boardSize) + "\n"

    squareSize.times do

      #Adds the leading "|" for the square borders"
      gridString << "|"

      boardSize.times do

        #If black == true prints "#"" and if black == false prints " " in
        #checkerboard and prints trailing "|" border for each square
        if (black == true)
          fill = "#"
          gridString << "#{(fill * squareSize) + "|"}"
        else
          fill = " "
          gridString << "#{(fill * squareSize) + "|"}"
        end

        #Switches black between true and false after each row of squares
        black = !black
      end
      #New line at end of each row
      gridString << "\n"

      if (boardSize % 2 == 1)

        #If boardSize is odd then the black boolean needs to be
        #re-toggled to return it to the value of the previous line in the board row
        black = !black
      else

        #If board size is even the black boolean will already be at the right value
      end
    end
  end

  #Creates the final border row
  gridString << "+"
  gridString << ("#{("-" * squareSize) + "+"}" * boardSize)

  puts gridString
end

#Creates an array called "dimensions" from arguments
dimensions = ARGV

#Raises exceptions if input is invalid, otherwise runs function to generate board
begin
  boardSize = Integer(dimensions[0])
  squareSize = Integer(dimensions[1])
  if (boardSize <= 0 || squareSize <= 0)
    raise "\nSizes must be positive values.\n\n"
  elsif (boardSize > 10 || squareSize > 10)
    raise "\nSizes too large, maximum size of board = 10, maximum size of square = 10\n\n"
  else
    generate_board(boardSize, squareSize)
  end

  #Exception handling for invalid input (i.e. anything but a positive integer between 1 and 10)
rescue StandardError => e

  #Replaces default error message for non-integer and nil input with more human-readable message.
  if (e.message.start_with?("invalid value for Integer():"))
    puts "\nSizes must be integers.\n\n"
  elsif (e.message == "can't convert nil into Integer")
    puts "\nPlease provide values for both board and square size\n\n"
  else

    #Otherwise returns error messages defined above if value non-positive or larger than 10
    puts e.message
  end
end
