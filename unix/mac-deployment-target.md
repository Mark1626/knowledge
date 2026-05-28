# Mac deployment target 

[Back](../index.md#unix)

Some APIs in MacOS gated behind a deployment target check. Deployment targe can be forced to match the current OS version by using

```
export MACOSX_DEPLOYMENT_TARGET="$(sw_vers -productVersion)"
```

