# Structure files

## `/sur`

A real-world Gall agent is likely to have a more complicated API than in previous examples.

The most common approach is to...
* define a head-tagged union of all possible poke types the agent will accept
* define another for all possible updates it might send out to subscribers

Rather than defining these types in the agent itself, you would typically define them in a separate core saved in the `/sur` directory of the desk.

The `/sur` directory is the canonical location for _userspace type definitions_.

With this approach, your agent can simply import the structure file and make use of its types.

Additionally, if someone wanted to write an agent that interfaces with yours, they could include your structure file in their own desk to interact with your agent's API in a type-safe way.


## Example

### `todo.hoon`

#### In the dojo of a fake ship, mount the base desk:
In dojo:
```
|mount %base
```

#### Copy the structire file into the `/sur` of the base desk
In unix:
```
cp ./sur/todo.hoon /path/to/fake/ship/zod/base/sur
```

#### Copy the agent into the `/app` directory of the base desk
In unix:
```
cp ./app/todo.hoon /path/to/fake/ship/zod/base/app
```

#### Commit the file to the desk
In dojo:
```
|commit %base
```

#### Start up the agent
In dojo:
```
|rein %base [& %todo]
```

#### Check its initial state with `dbug`
In dojo:
```
:todo +dbug
```

#### Now poke it
In dojo:
```
:todo [%add 'make bed']
```

#### Now check the state again...
In dojo:
```
:todo +dbug [%state '~(val by tasks)']
```

You should see:
```
>   ~[
  [name='make bed' done=%.n]
]
```
