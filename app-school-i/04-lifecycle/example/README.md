# Example

## State Lifecyle Arms
Let's look at each arm responsible for state management in detail:

### `on-init`
This arm takes no argument, and produces a `(quip card _this)`. It's called exactly once, when the agent is first installed. Its purpose is to initialize the agent.

### `on-save`
This arm takes no argument, and produces a `vase`. Its purpose is to export the state of an agent - the state is packed into the vase it produces. The main time it's called is when an agent is upgraded.

The state is packed in a vase with the zapgar (`!>`) rune, like `!>(state)`.

### `on-load`
This arm takes a `vase` and produces a `(quip card _this)`. Its purpose is to import a state previously exported with `on-save`.

The vase would be unpacked with a zapgal (`!<`) rune, and then typically you'd test its version with a wuthep (`?-`) expression.

## Agent w/ State Lifecycle Arms Implemented
Here is an agent utilizing the concepts discussed above.

```hoon
/+  default-agent, dbug
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0  [%0 val=@ud]
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
  `this(val 42)
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
++  on-poke   on-poke:def
++  on-watch  on-watch:def
++  on-leave  on-leave:def
++  on-peek   on-peek:def
++  on-agent  on-agent:def
++  on-arvo   on-arvo:def
++  on-fail   on-fail:def
--
```

### Breaking it down: the state core
```hoon
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0  [%0 val=@ud]
+$  card  card:agent:gall
--
```

In `state-0` we've defined the structure of our state, which is just a `@ud`. We've tagged the head with a `%0` constant representing the version number, so `on-load` can easily test the state version. In `versioned-state` we've created a union and just added our `state-0` type.

### Breaking it down: bunting `state-0`
After the `agent:debug` call we see this:
```hoon
=|  state-0
=*  state  -
```

Here we are "bunting" the `state-0` type, which produces`[%0 val=0]`, pinning the head of the subject.

The use of tistar (`=*`) gives it a name of `state`.

### Breaking it down: `on-init` in the agent core
```hoon
++  on-init
  ^-  (quip card _this)
  `this(val 42)
```

We use `cenhep` (`^-`) to enforce the output structure of `on-init`. Notice the `quip` mold-maker: `(quip a b)` is equivalent to `[(list a) b]`. A `card` is a message to another agent or vane. Lastly, we say `_this`, the underscore at the beginning is the irregular syntax for the `buccab` (`$_`) rune. So `_this` means "the type of `this`", which is the type of our agent core.

Using the irregular form of centis (`%=`), we return `this` (our agent core) with the face `val` replaced by `42`.

### Breaking it down: `on-save` in the agent core
```hoon
++  on-save
  ^-  vase
  !>(state)
```

This exports our agent's state. We're having it pack the `state` value in a `vase`.

### Breaking it down: `on-load` in the agent core
```hoon
++  on-load
  |=  old-state=vase
  ^-  (quip card _this)
  =/  old  !<(versioned-state old-state)
  ?-  -.old
    %0  `this(state old)
  ==
```

It takes in the old state in a `vase`, then unpacks it to the `versioned-state` type we defined earlier.

We test its head for the version, and load it back into the state of our agent if it matches.

## Updated Agent
Let's modify the previous agent and change the structure of the state.

```hoon
/+  default-agent, dbug
|%
+$  versioned-state
  $%  state-0
      state-1
  ==
+$  state-0  [%0 val=@ud]
+$  state-1  [%1 val=[@ud @ud]]
+$  card  card:agent:gall
--
%-  agent:dbug
=|  state-1
=*  state  -
^-  agent:gall
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %.n) bowl)
::
++  on-init
  ^-  (quip card _this)
  `this(val [27 32])
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
    %1  `this(state old)
    %0  `this(state 1+[val.old val.old])
  ==
::
++  on-poke   on-poke:def
++  on-watch  on-watch:def
++  on-leave  on-leave:def
++  on-peek   on-peek:def
++  on-agent  on-agent:def
++  on-arvo   on-arvo:def
++  on-fail   on-fail:def
--
```

### Breaking it down: the state core
```hoon
+$  versioned-state
  $%  state-0
      state-1
  ==
+$  state-0  [%0 val=@ud]
+$  state-1  [%1 val=[@ud @ud]]
+$  card  card:agent:gall
--
```

In the state definition core, you'll see we've added a new state version with a different structure.

### Breaking it down: bunting `state-1`
```hoon
=|  state-1
=*  state  -
```

We've also changed the part that adds the state, so it uses the new version instead.

### Breaking it down: `on-init` in the agent core
```hoon
++  on-init
  ^-  (quip card _this)
  `this(val [27 32])
```

In on-init, we've updated it to initialize the state with a value that fits the new type we've defined.

### Breaking it down: `on-load` in the agent core
```hoon
++  on-load
  |=  old-state=vase
  ^-  (quip card _this)
  =/  old  !<(versioned-state old-state)
  ?-  -.old
    %1  `this(state old)
    %0  `this(state 1+[val.old val.old])
  ==
```

We've updated the `?-` expression with a new case that handles our new state type, and for the old state type we've added a function that converts it to the new type - in this case by duplicating `val` and changing the head-tag from `%0` to `%1`.

This is an extremely simple state type transition function - it would likely be more complicated for an agent with real functionality.
