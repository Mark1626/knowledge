# Bash Declare

[Back](./bash.md)

```bash
# Get info on a variable
declare -p arr

# Integer
declare -n count
count=1.2 # Error

# Case
declare -u all_caps
all_caps=test
echo $all_caps
TEST

declare -l all_lower
all_lower=HeLlO
echo $all_lower
hello

# Read only
count=100
declare -r count
count=101 # Error read only

# Associative array
declare -A arr
arr[1]=foo
arr[one]=bar
declare -p arr
declare -A arr=([1]="foo" [one]="bar" )

# Indexed Array
declare -a arr
arr[1]=foo
arr[some]=bar
declare -p arr
declare -A arr=([0]="bar" [1]="foo" )

# Funtions
foo() { echo 'Hello World'; }
# If foo is defined then print foo
declare -F foo
# Display function definition
declare -f foo
```
