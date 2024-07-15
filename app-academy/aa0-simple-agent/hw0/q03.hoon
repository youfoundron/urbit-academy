:: Q3. Modify either of the minimalist Gall agents
::     to print the poke they receive using ~& sigpam. 

:: (You don't need to process the poke data, just output it.)

:: Poke it at the command line using the :agent &noun notation.
:: Respond to this question with the result of that action.


:: Modified agent
|_  =bowl:gall
++  on-init   `..on-init
++  on-save   !>(~)
++  on-load   |=(vase `..on-init)
++  on-poke
  |=  [=mark =vase]
  ~&  vase
  !!
++  on-watch  |=(path !!)
++  on-leave  |=(path `..on-init)
++  on-peek   |=(path ~)
++  on-agent  |=([wire sign:agent:gall] !!)
++  on-arvo   |=([wire sign-arvo] !!)
++  on-fail   |=([term tang] `..on-init)
--

:: Poked with...
:: > :alfa &noun 42

:: Logged
[#t/@ud q=42]
