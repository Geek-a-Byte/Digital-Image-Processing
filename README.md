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

- dividing number of pixels at gray level rk by the total number of pixels in the image, p(rk) = nk / n, For k=0,1,...,L-1
- p(rk) = gives an estimate of the probability of occurrence of gray level rk
- The sum of all components of a normalized histogram is equal to 1

## Histogram Processing
- ⮚ Basic for numerous spatial domain processing techniques
- ⮚ Used effectively for image enhancement
- ⮚ Information inherent in histograms also is useful in image compression and segmentation

Dark image - components of histogram are concentrated on the low side of the gray scale
![image](https://user-images.githubusercontent.com/59027621/179795040-2222f1fc-4379-4896-be17-9ffce59210fd.png)



Bright image - components of histogram are concentrated on the high side of the gray scale
![image](https://user-images.githubusercontent.com/59027621/179795086-9ae6cabd-9bac-4d1f-b74b-ad3fe3d23e69.png)

Low-contrast image - histogram is narrow and centered toward the middle of the gray scale
![image](https://user-images.githubusercontent.com/59027621/179795338-79ccfd97-ee16-418f-a579-4b16bccf1839.png)

High-contrast image - histogram covers broad range of the gray scale and the distribution of pixels is not too far from uniform, with very few vertical lines being much higher than the others

![image](https://user-images.githubusercontent.com/59027621/179795483-999faa64-ee6f-4b58-b943-c464ee519bc1.png)

## Histogram Transformation

A gray-level transformation function S=T(r) Where 0 ≤ r ≤ 1, that is both single-valued and monotonically increasing

![image](https://user-images.githubusercontent.com/59027621/179798033-0c35fc3a-be14-4e37-8f5f-be5d47c82ea7.png)

<br>
T(r) satisfies
<br>

- T(r) is single-vlaued and monotonically increasing in the interval 0 ≤ r ≤ 1
- 0 ≤ T(r) ≤ 1 for 0 ≤ r ≤ 1

## Conditions for T(r)

- Single-valued (one-to-one relationship) guarantees that the inverse transformation will exist
- Monotonicity condition preserves that output intensity values will never be less than the corresponding input values, thus preventing artifacts created by reversals.
- 0 ≤ T(r) ≤ 1 for 0 ≤ r ≤ 1 guarantees that the output gray levels will be in the same range as the input levels.
- The inverse transformation from s back to r is r = T^-1(s) ; 0 ≤ s ≤ 1

![image](https://user-images.githubusercontent.com/59027621/179803004-b307787e-52ca-4f46-b526-34fad6448b48.png)

Monotonically increasing function, showing how multiple values can map to a single value

![image](https://user-images.githubusercontent.com/59027621/179804516-cead1d94-5521-4823-a5ac-49aac7d4dbce.png)

Strictly monotonically increasing function. this is a one to one mapping, both ways.

![image](https://user-images.githubusercontent.com/59027621/179804780-bad58f7f-d36c-4258-aa1e-9954146caeee.png)


