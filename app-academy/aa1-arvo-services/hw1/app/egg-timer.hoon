/+  default-agent
|%
+$  card  card:agent:gall
--
::
^-  agent:gall
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %.n) bowl)
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  =/   t   !<(@dr vase)
  =/  card-list
    [%pass /egg-timer %arvo %b %wait (add now.bowl t)]~
  ::
  :: Print the first card in the list
  ~&  (head card-list)
  ::
  :: The `:_` (colcab) rune makes an inverted cell;
  :: it's just `:-` but with the head and tail swapped.
  ::
  :: We use colcab to produce the `(quip card _this)`
  :: because the list of cards is "heavier" here than
  :: the new agent core expression (`this`).
  :_  this
  card-list
::
++  on-arvo
  ^+  on-arvo:*agent:gall
  |=  [=wire =sign-arvo]
  ^-  (quip card _this)
  ~&  "Timer went off!"
  [~ this]
::
++  on-init   on-init:def
++  on-save   on-save:def
++  on-load   on-load:def
++  on-watch  on-watch:def
++  on-leave  on-leave:def
++  on-peek   on-peek:def
++  on-agent  on-agent:def
++  on-fail   on-fail:def
--
