:: Q6. List Basics VI

:: Write your previous code with the sugar version of :- (colhep)

:: The output should be the same.

:: Previous code
=/  carlist
  ^-  (list @t)
  ['toyota' 'ford' 'chevy' ~]
^-  (list @t)
:-  'bentley'
carlist

:: Answer
=/  carlist
  ^-  (list @t)
  ['toyota' 'ford' 'chevy' ~]
^-  (list @t)
['bentley' carlist]
