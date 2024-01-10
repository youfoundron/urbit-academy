:: Exercise: Loading a Library

:: In a generator, load the number-to-words library using the /+ faslus rune. (This must take place at the very top of your file.)

:: Use this to produce a gate which accepts an unsigned decimal integer and returns the text interpretation of its increment.


:: Answer

:: Save the below code as `next-num-text.hoon` in the `base/gen` folder of your fake ship
:: In the Dojo, run `|commit %base`. You should see a message indicating that the file has been loaded
:: Run the generator with `+next-num-text 3`

/+  number-to-words

|=  n=@ud
^-  @t
%-  crip
%-  tape
%-  to-words:eng-us:number-to-words
(add 1 n)
