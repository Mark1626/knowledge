# Code Art Secrets

[Back](../index.md){: .button}

### Ported from my old blog

Dated - 2019-08-13

### Today I reveal the secrets behind the code art I've created

## Pi

```c
// Author Nimalan
#define _ p-->0||p-i--;
float p=0,i=0;
f(){
				  _-_-_-_-_-_-_-_-_
				 _-_-    _-_
				_- _-    _-_
				  _-    _-_
				  _-    _-_
				  _-    _-_
				  _-    _-_- _
				_- _-    _-_-_-_
				 _-_-     _-_
}
main(){f();printf("%1.2f\n", p/i-i/p*5.8);}
```

<!-- truncate -->

Slightly straight forward if can figure out how operator precedence is done.

The macro is expanded into one of two possible statements
1. `p-->0||p-i--`
2. `-p-->0||p-i--`  

In case 1 both `p` and `i` are decremented. In case 2 only `p` is decremented.
This results in `p=40` and `i=9`. The rest is just creating a fraction that approx will give `3.14`

The idea for this was taken from the 1988 entry in [ioccc](https://ioccc.org/)

```c
#define _ -F<00||--F-OO--;
int F=00,OO=00;main(){F_OO();printf("%1.3f\n",4.*-F/OO/OO);}F_OO()
{
            _-_-_-_
       _-_-_-_-_-_-_-_-_
    _-_-_-_-_-_-_-_-_-_-_-_
  _-_-_-_-_-_-_-_-_-_-_-_-_-_
 _-_-_-_-_-_-_-_-_-_-_-_-_-_-_
 _-_-_-_-_-_-_-_-_-_-_-_-_-_-_
_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
 _-_-_-_-_-_-_-_-_-_-_-_-_-_-_
 _-_-_-_-_-_-_-_-_-_-_-_-_-_-_
  _-_-_-_-_-_-_-_-_-_-_-_-_-_
    _-_-_-_-_-_-_-_-_-_-_-_
        _-_-_-_-_-_-_-_
            _-_-_-_
}
```


## Mandelbrot set

This is a direct port of this [code](https://rosettacode.org/wiki/Mandelbrot_set#Ruby) from Rosetta Code.  

This next step was to make it Obfuscated.

And finally the icing on the cake(or rather the cake itself), I manually formatted the code
into a mandelbrot set. Yes, I manually created this.

```js
                                                           c=
                                                         `conso
                                                       le`;;;;;
                                                         vr=0;;
                                                      mds=0;;; ;;   ;
                                              ;;;   ;;;;;;;;;;;;;;;;;
                                              ;;;;;;;;;;;;;;;;;;;;;;;;  ;;;
                                              ;;;;;;;;;;;;;;;;;;;m=(cxtrd,
    /* Author: Nimalan */                  cyzy)=>{[xtrs, yrng]= [0  ,0];
                                            ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                                         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                                ;         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                           ;; for(i =     0;i < 0b110010;++i) {;;;;;;;;;;;;;
                           e=eval;;;;;   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                         [xtrs, yrng] = [xtrs*xtrs- yrng *yrng, xtrs * yrng+
                         xtrs * yrng];; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 [xtrs, yrng] = [xtrs + cxtrd,yrng+cyzy];;;;;;;;;;;;;;;;;;;;;;;;;n=Math;
                     }return n.sqrt(xtrs* xtrs+yrng * yrng);;;;;;;;;;;;;;;
                         } ;;;;;;;;;;;;;;;;pri=()=>{s="";;;;;;;;;;;;;;;;;;;;
                         for ( yrnx=1.;   yrnx>-1.;yrnx-=.05) {  for(xtrz=-2.;
                           xtrz< .5  ;   xtrz+=.0315){c=`console`;;;;;;;;;;;;
                           ;; ;;;;; ;     m1=m(xtrz,yrnx);;;;;;;;;;;;;;;;;;;
                                ;         l='log';;;;;;;;;;;;;;;;;s+=m1<2. ?
                                         '*':' ';;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                                            }eval(`${c}.${l}(s)`);;;;;;;;;
                                           ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                                              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                                              ;;;;;;;;;;;;;;;;;;;;;;;;  ;;;
                                              ;;;   ;;;;;;;;;;;;;;;;;
                                                      s="";;;; ;;   ;
                                                         }};;;;
                                                       pri();;;
                                                         ;;;;;;
                                                           ;;
```
