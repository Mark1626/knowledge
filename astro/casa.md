# CASA

[Back](./astronomy.md)

```py

```

```py
listobs(vis='1934-638_0.ms')
```

```py
plotms(vis='1934-638_0.ms', xaxis='u', yaxis='v', avgchannel='48', avgspw=False, avgtime='1e9', avgscan=False, coloraxis="field", showgui=True)
```

```py
tclean(vis='1934-638_0.ms',
       imagename='phase_cal',
       specmode='mfs',
       deconvolver='hogbom',
       gridder='standard',
       imsize=[2048,2048],
       cell=['2arcsec'],
       niter=500,
       weighting='natural',
       threshold='0.0mJy',
       interactive=True)
```
