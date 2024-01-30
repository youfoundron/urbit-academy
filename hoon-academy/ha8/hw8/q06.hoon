:: Q6. Super Boxcar VI

:: Boxcar Inc. likes to release well-tested code.

:: Let's write unit tests for the boxcar generator. We want to test:
:: +boxcar 3 -> 0, 
:: +boxcar 5 -> 1
:: +boxcar 11 -> crash

:: Make a tests folder in your base desk.
:: Fill out the following code, save it as boxcar-test.hoon in that folder, and commit.
:: Make sure your boxcar generator is saved as boxcar.hoon in gen, so the /= (fastis) import works.

:: /+ *test
:: /= boxcar /gen/boxcar
:: |%
:: ++  test-01
:: __________
:: __________
:: __________
:: ++  test-02
:: __________
:: __________
:: __________
:: ++  test-03
:: __________
:: __________
:: __________
:: --

:: When you're done, you can run the tests with the Dojo command:
-test %/tests/boxcar-test

:: Hints: 
:: Follow the primes example in the notes for guidance.

:: In the first two tests we should call the expect-eq gate from the test library,
:: which takes two vases and prints success if they're equal or otherwise prints failure. 


:: Answer
/+  *test
/=  boxcar  /gen/boxcar
|%
++  test-01
  %+  expect-eq
    !>  (boxcar 0)
    !>  0
++  test-02
  %+  expect-eq
    !>  (boxcar 5)
    !>  1
++  test-03
  %-  expect-fail
    |.  (boxcar 11)
--
