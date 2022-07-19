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

## Histogram and Probability Density Function)

- The gray levels in an image may be viewed as random variables in the  interval [0,1]
- The normalized histogram may viewed as a Probability Density Function (PDF)
- A cumulative distribution function (CDF) of random variable r : where w is a dummy variable of integration , Note that T(r) depends on pr(r)
- Transformation Function -
![image](https://user-images.githubusercontent.com/59027621/179829893-7db43ec0-0e09-44ba-941c-9cb0c19f1c56.png)

## Cumulative Distributive Function
- CDF is an integral of a probability function (always positive) is the area under the function
- Thus, CDF is always single valued and monotonically increasing
- Thus, CDF satisfies the condition (a)
- We can use CDF as a transformation function

## Histogram Equalization
- As the low-contrast image’s histogram is narrow and centered toward the middle of the gray scale, if we  distribute the histogram to a wider range the quality if  the image will be improved.
- We can do it by adjusting the probability density function of the original histogram of the image so that the probability spread equality.
- Equalization can be achieved by the following

![image](https://user-images.githubusercontent.com/59027621/179831782-a08b5c88-89c7-40ec-9f84-a50b9205ed51.png)

![image](https://user-images.githubusercontent.com/59027621/179832187-946bc1bb-3e56-412a-aec3-85baf1a4741a.png)
![image](https://user-images.githubusercontent.com/59027621/179833789-a0c1258c-d8f8-4c9f-8565-00bf4c5dc9cf.png)
![image](https://user-images.githubusercontent.com/59027621/179833832-b79fae27-d269-4710-bf0e-c7745f70629f.png)

- image vs histogram equalized image

![image](https://user-images.githubusercontent.com/59027621/179833895-05e699d3-571c-4c64-9f21-09d0df7a38d8.png)

![image](https://user-images.githubusercontent.com/59027621/179834504-f7560f1d-f7b9-45f5-b236-f0fd610c9d36.png)

✔ Image is dominated by large, dark areas, resulting in a histogram characterized by a large concentration of pixels in pixels in the dark end of  the gray scale

![image](https://user-images.githubusercontent.com/59027621/179835500-8510c305-0b08-46d0-8985-dab04e02629e.png)

✔ The histogram equalization doesn’t make the  result image look better than the original image.  Consider the histogram of the result image, the net  effect of this method is to map a very narrow interval  of dark pixels into the upper end of the gray scale of  the input image. As a consequence, the output image  is light and has a washed-out appearance.

## Histogram Specification (Matching)

- Histogram equalization has a disadvantage which is that it can generate only one type of output image.
- With Histogram Specification, we can specify the shape of the histogram that we wish the output image to have.
- It doesn’t have to be a uniform histogram

![image](https://user-images.githubusercontent.com/59027621/179839632-da67788e-7d07-4003-9113-5c7bb1cc5663.png)
![image](https://user-images.githubusercontent.com/59027621/179839767-fd1cfe2c-87bd-4e66-b592-828b030cf294.png)

✔ Notice that the output histogram’s  low end has shifted right toward the  lighter region of the gray scale as  desired.

- Histogram specification is a trial-and-error process
- There are no rules for specifying histograms, and one must resort to analysis on a case-by-case basis for any given enhancement task.
- Histograms processing methods are global processing, in the sense that pixels are modified by a transformation function based in the gray-level content of an entire image.
- Sometimes, we may need to enhance details over small areas in an image, which in called a local enhancement.

![image](https://user-images.githubusercontent.com/59027621/179840570-833f3b0b-ea67-4f7c-800a-1dce721401fd.png)

- Define a square or rectangular neighborhood and move the center of this area from pixel to pixel.
- At each location, the histogram of the points in the neighborhood is computed and either histogram equalization or histogram specification transformation function is obtained.
- Another approach used to reduce computation is to utilize nonoverlapping  regions, but it usually produces an undesirable “blocky” effect.


