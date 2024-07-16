:: Q2. Complete the “Writing Marks” tutorial at
:: https://developers.urbit.org/reference/arvo/clay/marks/writing-marks.

:: Consider the following CSV data:

:: ```
:: Year,Make,Model
:: 1997,Ford,E350
:: 2000,Mercury,Cougar
:: ```

:: Use the resulting CSV mark to convert the text in the block above
:: from `csv` to `noun` and paste the result below.

:: You'll create a new `%base` `/mar/csv.hoon` file.

:: You should build a dynamic mark tube to apply the csv mark, e.g.:
:: ```
:: =mycsv -read [%x our %base da+now /put/cars/csv]
:: =csv-to-noun-tube .^(tube:clay %cc /===/csv/noun)
:: !<(noun (csv-to-noun-tube !>(mycsv)))
:: ```

:: Answer
[ [1.918.985.561 1.701.536.077 465.557.548.877 0]
  [926.497.073 1.685.221.190 808.792.901 0]
  [808.464.434 34.184.320.687.170.893 125.762.673.143.619 0]
  0
]