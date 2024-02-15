# Example

## Useful libs
Every agent you write will likely use the libraries `default-agent` and `dbug`.

### `default-agent`
The `default-agent` library contains a basic agent with sane default behaviours for each arm. In some cases it just crashes and prints an error message to the terminal, and in others it succeeds but does nothing. It has two primary uses:

- For any agent arms you don't need, you can just have them call the matching function in default-agent, rather than having to manually handle events on those arms.

- A common pattern in an agent is to switch on the input of an arm with wutlus (`?+`) runes or maybe wutcol (`?:`) runes. For any unexpected input, you can just pass it to the relevant arm of default-agent rather than handling it manually.

### `dbug`
The `dbug` library lets you inspect the state and `bowl` of your agent from the dojo. It includes an `agent:dbug` function which wraps your whole `agent:gall` door, adding its extra debugging functionality while transparently passing events to your agent for handling like usual.

## Modified `skeleton.hoon` agent
Below the dummy agent from the previous lesson has been modified with the libraries described above.

```hoon
/+  default-agent, dbug
|%
+$  card  card:agent:gall
--
%-  agent:dbug
^-  agent:gall
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %.n) bowl)
++  on-init
  ^-  (quip card _this)
  `this
++  on-save   on-save:def
++  on-load   on-load:def
++  on-poke   on-poke:def
++  on-watch  on-watch:def
++  on-leave  on-leave:def
++  on-peek   on-peek:def
++  on-agent  on-agent:def
++  on-arvo   on-arvo:def
++  on-fail   on-fail:def
--
```

We can poke our agent with the `+dbug` generator from the dojo and it will pretty-print its state, like:  

```
:skeleton +dbug
```
