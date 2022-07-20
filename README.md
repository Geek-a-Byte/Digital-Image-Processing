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

## Local Enhancement

![image](https://user-images.githubusercontent.com/59027621/179840570-833f3b0b-ea67-4f7c-800a-1dce721401fd.png)

- Define a square or rectangular neighborhood and move the center of this area from pixel to pixel.
- At each location, the histogram of the points in the neighborhood is computed and either histogram equalization or histogram specification transformation function is obtained.
- Another approach used to reduce computation is to utilize nonoverlapping  regions, but it usually produces an undesirable “blocky” effect.

## Histogram Statistics for Image Enhancement

![image](https://user-images.githubusercontent.com/59027621/179858343-2e2dbf36-eb1c-46b6-9bdc-2405168180ad.png)

## Enhancement using  Arithmetic/Logic Operations

- Arithmetic/Logic operations perform on pixel by pixel basis between two or more images
- except NOT operation which perform only on a single image
- Logic operation performs on gray-level images, the pixel values are processed as binary numbers
- light represents a binary 1, and dark represents a binary 0
- NOT operation = negative transformation

![image](https://user-images.githubusercontent.com/59027621/179858967-23b89604-8cc2-4a7a-ae58-30df7208ec37.png)

## Image Subtraction

![image](https://user-images.githubusercontent.com/59027621/179859428-b982d0d6-bf33-4639-855e-7f4d4cfddb36.png)

## Notes 

- We may have to adjust the gray-scale of the subtracted  image to be [0,255] (if 8-bit is used)
- first, find the minimum gray value of the subtracted image
- second, find the maximum gray value of the subtracted image
- Set the minimum value to be zero and the maximum to be 255
- While the rest are adjusted according to the interval [0,255], by timing each value with 255/max

![image](https://user-images.githubusercontent.com/59027621/179860425-0a94f04b-bfda-4ef9-9876-657ecf24dc20.png)

![image](https://user-images.githubusercontent.com/59027621/179865528-17c22fbf-983d-4c2b-9548-0c820f1ffe9b.png)

## Spatial Filtering

- use filter (can also be called  as mask/kernel/template or  window)
- the values in a filter  subimage are referred to as  coefficients, rather than pixel
- our focus will be on masks of  odd sizes, e.g. 3x3, 5x5,…
- g(x,y) = summation(filter coeefs * pixels of image section under the filter mask)

![image](https://user-images.githubusercontent.com/59027621/179868549-dfa081e8-160b-4f05-96f1-6f166c057a1b.png)
![image](https://user-images.githubusercontent.com/59027621/179868561-ace7bad5-5c8f-464f-a42a-9e04cb3a64e0.png)

## Vector Representation of Linear Filtering

- simply move the filter mask from point to point in an image.
- at each point (x,y), the response of the filter at that point is calculated using a predefined characteristics.

![image](https://user-images.githubusercontent.com/59027621/179868865-cfe62f1b-abe2-437a-853b-66e171486bfb.png)
![image](https://user-images.githubusercontent.com/59027621/179873336-7acd5e6e-30fa-4913-8101-60632d6b5e4a.png)


## Smoothing Spacial Filters

- Used for blurring and for noise reduction
- Blurring is used in preprocessing steps, such as
	- removal of small details from an image prior to object extraction
  - bridging of small gaps in lines or curves
- Noise reduction can be accomplished by blurring with a linear filter and also by a nonlinear filter
- Output is simply the average of the pixels contained in the neighborhood of the filter mask.
- Called averaging filters or lowpass filters.

## 3x3 Smoothing Linear Filters
![image](https://user-images.githubusercontent.com/59027621/179873033-1cba93cd-aa96-4803-ae13-55b5218ec554.png)

## Weighted Average:
the center is the most important and  other pixels are inversely weighted as a  function of their distance from the  center of the mask





