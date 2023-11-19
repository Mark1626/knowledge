-
- ```scm
  (define object-locations '(
      (whiskey-bottle . living-room)
      (bucket . living-room)
      (chain . garden)
      (frog . garden)
      (test . player)
  ))
  ```
- > Note: Associative list created using quote are immutable
- ## Modifying assoc-lists
- ```scm
  (assoc-set! object-location* object 'player)
  ```
-
- ## Reading
- https://www.gnu.org/software/guile/manual/html_node/Association-Lists.html
  logseq.order-list-type:: number
-