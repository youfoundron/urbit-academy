:: Q19. Factorial II

:: This is an OPTIONAL challenge question.

:: If you hadn't in the previous question, try writing your answer in the "natural" recursion style shown in the notes. This shortens the code and lets us avoid using an extra variable like "total".


:: Answer
=/  n
  5
|-
?:  =(n 1)
  n
(mul n $(n (dec n)))
