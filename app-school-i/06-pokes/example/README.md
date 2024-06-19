# Example

## `pokeme.hoon`
#### In the dojo of a fake ship, mount the base desk:
In dojo:
```
|mount %base
```

#### Copy the agent into the app directory of the base desk
In unix:
```
cp pokeme.hoon /path/to/fake/ship/zod/base/app
```

#### Commit the file to the desk
In dojo:
```
|commit %base
```

#### Start up the agent
In dojo:
```
|rein %base [& %pokeme]
```

#### Check its initial state with `dbug`
In dojo:
```
:pokeme +dbug [%state %val]
```

#### Next we'll try poking it
In dojo:
```
:pokeme %inc
```

#### Check its state again...
In dojo:
```
:pokeme +dbug [%state %val]
```

## `pokeit.hoon`
#### Copy the agent into the app directory of the base desk
In unix:
```
cp pokeit.hoon /path/to/fake/ship/zod/base/app
```

#### Commit the file to the desk
In dojo:
```
|commit %base
```

#### Start up the agent
In dojo:
```
|rein %base [& %pokeit]
```

#### Next we'll try poking it
In dojo:
```
:pokeit %inc
```

#### Check the state of `pokeme`
In dojo:
```
:pokeme +dbug [%state %val]
```