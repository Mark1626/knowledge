# Guile Macros
-
- ## Examples
- **A simple expansion**
- ```scm
  ; Macro
  ; Usage (walk west)
  ; Expanded to (walk-direction west)
  (define-syntax walk
      (syntax-rules ()
          ((walk direction)
           (walk-direction 'direction))))
  
  ```
- **A more complex expansion that create a new procedure**
- ```scm
  (define-syntax game-action
      (syntax-rules ()
          ((game-action command subj obj place ...)
           (define command (lambda (subject object)
              (cond ((and (eq? *location* 'place)
                          (eq? 'subject 'subj)
                          (eq? 'object 'obj)
                          (have 'subj))
                      ...)
                      (#t '(i cant command like that.))))))))
  
  (game-action weld chain bucket attic
              (cond ((and (have 'bucket) (set! *chain-welded* #t))
                  '(the chain is now securely welded to the bucket.))
                  (#t '(you do not have a bucket.))))
  
  (game-action dunk bucket well garden
      (cond (*chain-welded (set! *bucket-filled* #t) '(the bucket is full of water.)
          (#t '(the water level is too low to reach.)))))
  
  ; Creates two new actions into the game
  ```
- ## Further Reading
- https://www.gnu.org/software/guile/manual/html_node/Macros.html
  logseq.order-list-type:: number
-