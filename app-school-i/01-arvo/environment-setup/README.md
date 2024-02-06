# Environment Setup

## Create a new desk
To create a new desk, you can merge from an existing one (typically `%base`).

#### Merge by running the following:
In dojo:
```
|merge %mydesk our %base
```

#### Mount your new desk afterwards:
In dojo:
```
|mount %mydesk
```

You'll now have `/mydesk` directory in your pier with all the files of the `%base` desk inside.

## Using `dev` desks
Alternatively, you can use pre-constructed `dev` desks from the `urbit/pkg` path on the [Urbit OS Repo](https://github.com/urbit/urbit).

To use the `base-dev` desk, which has been copied into `mydesk` within this directory, try the following...

#### Follow the instructions from "Create a new desk" above
In dojo:
```
|merge %mydesk our %base
|mount %mydesk
```

#### Replace the contents of the desk on the pier, with those of the `dev` desk in this directory
In unix terminal:
```
rm -r /path/to/fake/zod/mydesk/*
cp -rL mydesk/* /path/to/fake/zod/mydesk
```

#### Add a `sys.kelvin` file
In unix terminal:
```
echo "[%zuse 412]" >  /path/to/fake/zod/mydesk/sys.kelvin
```

#### Commit the changes to your desk
In dojo:
```
|commit %mydesk
```

## Syncing Repos
Whenever you want to test your changes, you can copy them across to your pier in the unix terminal:
```
cp -ruv mydesk/* /path/to/fake/zod/mydesk
```

Then just commit them in the dojo:
|commit %mydesk