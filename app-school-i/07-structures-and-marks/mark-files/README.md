# `mark` files
So far we've just used a `%noun` mark for pokes.

We haven't really discussed custom `marks` are or how to write them.

Mark files live in the `/mar` directory of a desk. The `%noun` mark, for example corresponds to the `/mar/noun.hoon` file.

Mark files define the actual hoon data type for the file (e.g. a `*` noun for the `%noun` mark), but they also specify some extra things:
- Methods for converting between the mark in question and other marks.
- Revision control functions like patching, diffing, merging, etc.

Aside from their use by Clay for storing files in the filesystem, they're also used extensively for exchanging data with the outside world, and for exchanging data between Gall agents.

When data comes in from a remote ship, destined for a particular Gall agent, it will be validated by the file in `/mar` that corresponds to its mark before being delivered to the agent. If the remote data has no corresponding mark file in `/mar` or it fails validation, it will crash before it touches the agent.

A mark file is a door with exactly three arms.

The door's sample is the data type the mark will handle.

For example, the sample of the `%noun` mark is just `non=*`, since it handles any noun.

The three arms are as follows:
- `grab`: Methods for converting _to_ our mark _from_ other marks
- `grow`: Methods for converting _from_ our mark _to_ other marks
- `grad`: Revision control functions

Here's a very simple mark file:
```
:: Door that takes a sample of @t
|_  custom-mark=@t

:: +grab arm
:: contains a core w/ arms for converting _to_ our mark _from_ another mark
++  grab
  |%
  :: We've given it one arm for the %noun mark - the most generic mark which will take any noun
  :: Our +noun arm will clam w/e it's given with the @t mold
  ++  noun  @t
  --
:: +grow arm
:: does the inverse of grab, converting _from_ our mark _to_ another mark
++  grow
  |%
  :: 
  ++  noun  custom-mark
  --
++  grad  %noun
--
```

Now let's consider the arms:
- `grab`: This handles conversion methods to our mark. It contains a core with arm names corresponding to other marks. In this case, it can only convert from a noun mark, so that's the core's only arm. This is called "clamming" or "molding".
- `grow`: This handles conversion methods from our mark. Like grab, it contains a core with arm names corresponding to other marks. Here we've also only added an arm for a `%noun` mark. In this case, action data will come in as the sample of our door, and the noun arm simply returns it, since it's already a noun (as everything is in Hoon).
- `grad`: This is the revision control arm, and as you can see we've simply delegated it to the `%noun` mark.

## Example

#### In the dojo of a fake ship, mount the base desk:
In dojo:
```
|mount %base
```

#### Copy the structure file into the `/sur` directory of the base desk
In unix:
```
cp ./sur/todo.hoon /path/to/fake/ship/zod/base/sur
```

#### Copy the mark files into the `/mar` directory of the base desk
In unix:
```
cp ./mar/todo/action.hoon /path/to/fake/ship/zod/base/mar/todo
cp ./mar/todo/udpate.hoon /path/to/fake/ship/zod/base/mar/todo
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

#### Now poke it using a mark type like so
In dojo:
```
:todo &todo-action [%add 'make bed']
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
