:: Q3.  Casting vs Molding 

:: Consider the following cell type mold:
$:  the=@p  goes=@t  ==

:: Cast the cell [700.983.177 561.016.680] to this mold using ^-  and verify that it crashes with a nest-fail.
:: Then call the mold as a gate on the same cell and report what it returns.

:: First let's try casting the cell to the mold (this should error)
^-
  $:  the=@p  goes=@t  ==
  [700.983.177 561.016.680]

:: We need to call the mold as a gate... what rune do we use?
:: Cen-family runes are used for calling gates... 
:: Let's use cenhep!
%-
  $:  the=@p  goes=@t  ==
  [700.983.177 561.016.680]

:: Answer
[the=~littel-rabbyt goes='hop!']