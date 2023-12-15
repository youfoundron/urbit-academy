:: Q5. Zookeeper II

:: Write your previous code with sugar syntax for $? (bucwut).

:: Previous code
=/  animal
  $?  %wolf
      %eagle
      %lion
      %tiger
      %bear
  ==
^-  animal
%tiger

:: Answer
=/  animal
  ?(%wolf %eagle %lion %tiger %bear)
^-  animal
%tiger
