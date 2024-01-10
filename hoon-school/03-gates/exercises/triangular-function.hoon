:: Exercise: Triangular Function

:: Implement the triangular function as a gate and save it as a generator tri.hoon.


:: Answer

:: Save the below code as `tri.hoon` in the `base/gen` folder of your fake ship
:: In the Dojo, run `|commit %base`. You should see a message indicating that the file has been loaded
:: Run the generator with `+tri 3`

:: Triangular function
|=  x=@ud
^-  @ud
:: if (2 < x <= 3) return x - 2
?:  &((gth x 2) (lte x 3))
  (sub x 2)
:: if (3 < x <= 4) return 4 - x
?:  &((gth x 4) (lte x 4))
  (sub 4 x)
:: else return 0
0
