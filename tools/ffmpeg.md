# FFMPEG

[Back](../index.md#ffmpeg){: .button}


## Convert Video to WebW

```
  ffmpeg -i input.mp4 output.webm
```

## OPUS to mp4

```
ffmpeg -i input.opus -c:a libopus -strict experimental output.mp4
```

## OGG to mp4

```
ffmpeg -i input.ogg -c:a copy output.mp4
```

