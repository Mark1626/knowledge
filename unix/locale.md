# Locale

[Back](../index.md#unix){: .button}

### Generating locale

- Uncomment the needed locale from /etc/locale.gen
- Run `locale-gen`
- You can now check the locale with `locale -a`

## Locale C

```
export LC_ALL=C
```

LC_ALL is the environment variable that overrides all the other localisation settings

The C locale is a special locale that is meant to be the simplest locale. You could also say that while the other locales are for humans, the C locale is for computers. In the C locale, characters are single bytes, the charset is ASCII (well, is not required to, but in practice will be in the systems most of us will ever get to use), the sorting order is based on the byte values¹, the language is usually US English (though for application messages (as opposed to things like month or day names or messages by system libraries), it's at the discretion of the application author) and things like currency symbols are not defined.

