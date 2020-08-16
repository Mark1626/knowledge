# Users and Groups

[Back](../index.md){: .button}

## Users

### Creating an user

- Creating a new user

  ```sh
  useradd -m -G [groups] -s login_shell mark
  ```

  - `-m` Creates the user home directory `/home/username`
  - `-G` Each group is separated by a comma
  - `-s` Defines the default of the user

- Setting a password for the user

  ```sh
  passwd mark
  ```
 
### Modify the user

- Move the user to a new home

```
usermod -d /home/newhome -m mark
```

- Modify the user's name

```
usermod -l newname oldname
```

## Group

List all the groups a user belongs to `group <user>`


### Creating a group

```
group add <group-name>
```

Once a group is created, use `chown` and `chmod` to change access to the desired folder
to give it to the group

See Also [Chown](./chown.md)

