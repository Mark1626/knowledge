# Bash array

[Back](./bash.md)

```
declare -a arr=(1 2 3 4)
declare -a names("a" "b" "c" "d")

for i in "${arr[@]}"
do
    echo "$i"
done

echo $arr[1]

```

