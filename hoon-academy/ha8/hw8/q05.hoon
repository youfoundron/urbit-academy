:: Q5. Super Boxcar V

:: Let's practice using a library file.
:: Save the following core as boxcar-lib.hoon in the lib folder of your base desk, and commit it.

:: |%
:: ++  gth-3  |=(x=@ud (gth x 3))
:: ++  lte-5  |=(x=@ud (lte x 5))
:: -- 

:: This core has two arms, one is a gate that tests if an input is greater than 3,
:: another is a gate that tests if an input is less than or equal to 5.

:: In your boxcar generator file, import boxcar-lib and write the logic using the library arms instead.

:: Hint: 
:: /+  boxcar-lib lets you access the arms within the context of the core, like 
:: gth-3:boxcar-lib

:: /+  *boxcar-lib lets you access the namespace directly, like 
:: gth-3


:: Answer
/+  boxcar-lib

|=  x=@ud
^-  @ud 
~&  >  (crip "Your input was {<x>}")
~|  'Input must not be greater than 10'
?<  (gth x 10)
?:(&((gth-3:boxcar-lib x) (lte-5:boxcar-lib x)) 1 0)
