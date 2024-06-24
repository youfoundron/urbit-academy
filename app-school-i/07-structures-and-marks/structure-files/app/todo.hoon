/-  todo
/+  default-agent, dbug
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0  [%0 =tasks:todo]
+$  card  card:agent:gall
--
%-  agent:dbug
=|  state-0
=*  state  -
^-  agent:gall
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %.n) bowl)
::
++  on-init
  ^-  (quip card _this)
  `this
::
++  on-save
  ^-  vase
  !>(state)
::
++  on-load
  |=  old-state=vase
  ^-  (quip card _this)
  =/  old  !<(versioned-state old-state)
  ?-  -.old
    %0  `this(state old)
  ==
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  |^
  ?+    mark  (on-poke:def mark vase)
      %noun
    =^  cards  state
      (handle-poke !<(action:todo vase))
    [cards this]
  ==
  ::
  ++  handle-poke
    |=  =action:todo
    ^-  (quip card _state)
    ?-    -.action
        %add
      :_  state(tasks (~(put by tasks) now.bowl [name.action %.n]))
      :~  :*  %give  %fact  ~[/updates]  %noun
              !>(`update:todo`[%add now.bowl name.action])
          ==
      ==
    ::
        %del
      :_  state(tasks (~(del by tasks) id.action))
      :~  :*  %give  %fact  ~[/updates]  %noun
              !>(`update:todo`action)
          ==
      ==
    ::
        %toggle
      :_  %=  state
            tasks  %+  ~(jab by tasks)
                     id.action
                   |=(=task:todo task(done !done.task))
          ==
      :~  :*  %give  %fact  ~[/updates]  %noun
              !>(`update:todo`action)
          ==
      ==
    ::
        %rename
      :_  %=  state
            tasks  %+  ~(jab by tasks)
                     id.action
                   |=(=task:todo task(name name.action))
          ==
      :~  :*  %give  %fact  ~[/updates]  %noun
              !>(`update:todo`action)
          ==
      ==
    ==
  --
::
++  on-watch  on-watch:def
++  on-leave  on-leave:def
++  on-peek   on-peek:def
::
++  on-agent  on-agent:def
++  on-arvo   on-arvo:def
++  on-fail   on-fail:def
--
