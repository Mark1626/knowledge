# Chakravala Method

[Back](../../index.md){: .button}

Chakravala is a cyclic algorithm to solve Pell's equation

```c
int64_t chakravala(int n)
{
    int64_t curr_x,curr_p,curr_y,opti_p,curr_k;
    int64_t next_p_low,next_p_high,next_p,next_k,next_x,next_y;
    int64_t diff,curr_k_abs;
    curr_p = curr_x = opti_p = round(sqrt(n));
    curr_k = (curr_p *curr_p) - n;

    curr_y = 1;

    if(sqrt(n)==(int)sqrt(n))
        return 0;

    if(curr_k == 1)
        return curr_x;

    while(1){

    curr_k_abs = abs(curr_k);
    diff = (curr_p+opti_p)%curr_k_abs;
    next_p_low = opti_p - diff;
    next_p_high = next_p_low + curr_k_abs;

    if(next_p_low<1)
        next_p = next_p_high;
    else next_p = (abs( (next_p_low*next_p_low) - n) < abs( (next_p_high*next_p_high) - n))?next_p_low:next_p_high;

    next_k = ((next_p*next_p) - n)/curr_k;
    next_x = ((next_p*curr_x) + (n*curr_y))/curr_k_abs;
    next_y = ((next_p*curr_y) + curr_x)/curr_k_abs;


    if(next_k==1)
        return next_x;

    curr_k = next_k;
    curr_p = next_p;
    curr_x = next_x;
    curr_y = next_y;

    }

}
```

## Reference

- [Chakravala method](https://en.wikipedia.org/wiki/Chakravala_method)

