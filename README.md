# DIP Theory 


## Histogram Processing

- histogram is the graphical representation of any data
- histogram in ip represents data related to digital images
- histogram is the representation of relative frequency of occurence of various gray levels,
- how many times the gray level value has occured in the digital image
- histogram equalization is used for image enhancement

- Histogram of a digital image is a discrete function with gray levels in range [0,L-1] 

```
h(rk)=nk
Where
rk : the kth gray level
nk : the number of pixels in the image having gray level rk
h(rk) : histogram of digital image with gray levels rk
```

## Normalized Histogram

dividing number of pixels at gray level rk by the total number of pixels in the image, p(rk) = nk / n
