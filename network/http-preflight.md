# Http Preflight Request

[Back](../index.md#network){: .button}

When dealing with CORS the browser or front-end sends a pre-flight request to check if the CORS request is understood

From the MDN docs

A CORS preflight request is a CORS request that checks to see if the CORS protocol is understood and a server is aware using specific methods and headers.

```
OPTIONS /resource/foo 
Access-Control-Request-Method: DELETE 
Access-Control-Request-Headers: origin, x-requested-with
Origin: https://foo.bar.org
```

### References

- [CORS Preflight Requst](https://developer.mozilla.org/en-US/docs/Glossary/Preflight_request)
