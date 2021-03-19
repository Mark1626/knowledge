# Extended Euclidean Algorithm

[Back](../../index.md){: .button}

Extended Euclidean Algorithm is an extension to the classic Euclidean Algorithm, which calculates x, y of the identity

```
ax + by = gcd(a, b)
```

Example

```cpp
int d,x,y;
int exgcd(int a,int b)
{
    if(b==0)
    {
        d = a;
        x = 1;
        y = 0;
    }

    else{
        exgcd(b,a%b);
        int temp = x;
        x = y;
        y = temp - (a/b)*y;
    }
}
```
