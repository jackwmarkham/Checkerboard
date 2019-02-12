### Programming Assessment: Checkerboard ###

This project was an assessment exercise for an employer

The task was to create a program that would generate a checkerboard pattern in the command line like so:

+---+---+---+
|###|   |###|
|###|   |###|
|###|   |###|
+---+---+---+
|   |###|   |
|   |###|   |
|   |###|   |
+---+---+---+
|###|   |###|
|###|   |###|
|###|   |###|
+---+---+---+

The program was written in ruby 2.5.3 and can be run from the command line via the command "ruby .\checkerboard.rb boardSize squareSize"

- The program was to use arguments to define the number of squares in the grid as well as the size of the indiviual squares

- Error handing has been included for invalid inputs including non-integers, negative integers, nil values and zero values

- The max size of both values has been set to 15 to make sure the entire pattern is visible on the command line but this can be easily adjusted

- I used ruby as I am most familiar with it, however the same program could be easily converted into another language as it just uses string concatination and interpolation to construct the image

- The x.times method is effectively a for loop with the number of iterations being the value of the integer passed to it

- Using this I constructed the grid line-by-line using ruby's convenient string interpolation syntax to perform much of the logic within the string as it was concatenated

- A boolean value was used to switch between "black" and "white" squares and flipped between each section of a square

- If there was an odd number of squares it was flipped again to prevent it getting out of sync with the above row

- Overall it was an interesting exercise, especially getting the alternation of the square colours right

- I completed in the task, not including documentation, within about 45 minutes

