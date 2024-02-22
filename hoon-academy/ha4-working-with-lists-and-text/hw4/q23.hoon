:: Q23. Working with Tapes VII

:: The syntax <.......> turns any wide/sugar form Hoon into a tape. It's usually used with just a face inside.

:: > <(add 2 2)>
:: "4"

:: > <:-(1 2)>
:: "[1 2]"

:: The syntax {........} inside a tape interpolates a tape inside it.

:: > =/  x  "Time"
:: =/ y "an arrow"
:: "{x} flies like {y}"
:: "Time flies like an arrow"


:: > =/  x  "Fruit"
:: =/ y "a banana"
:: "{x} flies like {y}"
:: "Fruit flies like a banana"

:: Fill out this code below so that it returns a tape of the form: "Hello, I'm ~tamlut-modnys and I like the number 24." Use both of the above combined.

:: =/  ship  ^-  @p  _______
:: =/  num  ^-  @ud  _______
:: "Hello, I'm ________ and I like the number _______."

:: Post the whole code below.

:: Answer
=/  ship  ^-  @p  ~ronnys-rigwet
=/  num  ^-  @ud  57
"Hello, I'm {<ship>} and I like the number {<num>}."
