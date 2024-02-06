# Example

## Simplest valid Gall agent
Here is about the simplest valid Gall agent:

```hoon
|_  =bowl:gall
++  on-init   `..on-init
++  on-save   !>(~)
++  on-load   |=(vase `..on-init)
++  on-poke   |=(cage !!)
++  on-watch  |=(path !!)
++  on-leave  |=(path `..on-init)
++  on-peek   |=(path ~)
++  on-agent  |=([wire sign:agent:gall] !!)
++  on-arvo   |=([wire sign-arvo] !!)
++  on-fail   |=([term tang] `..on-init)
--
```

### Structure
The `=bowl:gall` syntax simply means `bowl=bowl:gall` which is irregular syntax for:
```hoon
$=  bowl  bowl:gall
```

### Output
Eight of an agent's ten arms produce the same thing, a cell of:
- **Head**: A list of effects called cards.
- **Tail**: A new agent core, possibly with a modified payload.

You'll notice some of the arms in our agent above return:
```hoon
`..on-init
```

A backtick at the beginning is an irregular syntax means "prepend with null".

The next bit, `..on-init`, means "the subject of the `on-init` arm".

Put it together and you have:
```hoon
[~ <subject-of-the-on-init-arm>]
```

Since the empty list is `~`, and the subject of `on-init` is our whole agent, we've created a cell that satisfies the above description of **Head** and **Tail**.

## Examining the agent in dojo
#### In the dojo of a fake ship, mount the base desk:
In dojo:
```
|mount %base
```

#### Copy the agent into the app directory of the base desk
In unix:
```
cp skeleton.hoon /path/to/fake/ship/zod/base/app
```

#### Commit the file to the desk
In dojo:
```
|commit %base
```

#### Build the file and save it to the subject
In dojo:
```
=skeleton -build-file %/app/skeleton/hoon
```

#### Now examine the agent core's payload
In dojo:
```
+.skeleton
```

We'll see its head is the `bowl:gall` sample we specified, and then the tail is just all the usual standard library functions.