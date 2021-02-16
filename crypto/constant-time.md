# Constant Time Cryptography

[Back](../index.md){: .button}

```
function checkApiKey(inputKey, correctKey) {
  if (inputKey !== correctKey) {
      throw new Error("wrong key");
  }
}
```

Since string comparison is done byte by byte, even if an exception is thrown the number of correct bits can be guessed.

This has to be considered when choosing what to use for implementing cryptography algorithm, as an example BigInt is vulnerable to [this](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/BigInt#cryptography)

## References

- [Beginners Guide to Constant Time Cryptography](https://www.chosenplaintext.ca/articles/beginners-guide-constant-time-cryptography.html)

