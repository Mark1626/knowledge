# Bash loop

[Back](../../index.md#bash)

```bash
for i in 1 2 3 4
do
    echo $i
done

declare -a arr=("1" "2" "3")
for i in "${arr[@]}"
do
    echo $i
done
```

