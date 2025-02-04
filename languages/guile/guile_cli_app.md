## Guile Cli App

[Back](../../index.md#guile){: .button}

```scm
#!/usr/bin/env guile -s
!#

(use-modules (ice-9 regex))
(use-modules (ice-9 format))

(define (main)
    (let ((args (program-arguments)))
        (if (< (length args) 2)
            (begin (display (format #f "Usage: ~s [args]\n" (car args)))
                    (newline)
                    (exit)))))
; Call the main function
(main)
```