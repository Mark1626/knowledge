# Users and Groups

[Back](../index.md#unix){: .button}

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


- Modify user groups

```
usermod -a -G group1, group2, group3 user
```


## Group

List all the groups a user belongs to `groups <user>`


### Creating a group

```
groupadd <group-name>
```

Once a group is created, use `chown` and `chmod` to change access to the desired folder
to give it to the group

See Also [Chown](./chown.md)

