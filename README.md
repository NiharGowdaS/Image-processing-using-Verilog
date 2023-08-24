# Image-processing-using-Verilog

Convolution Filter 

Kernel Size 3*3

For each input pixel window, the values in that window are
multiplied by the convolution mask. Next, those results are
added together. This value is the output for the origin pixel
of the output image for that position.  
The input pixel window is always the same size as the convolution
mask.  
The results for this algorithm carried over an entire input image
will result in an output image as text file which is converted back
to an image using python
We can implement different filter such as blurring, sharpening,
embossing, edge detection by changing the values of kernel


![Screenshot 2023-08-24 123425](https://github.com/NiharGowdaS/Image-processing-using-Verilog/assets/77974814/dd63eb33-ecb5-40c5-ad72-cfe252b82e8f)

The image file is converted into a text file using python software and the text file is taken as input to the verilog code
(IAG).Based on type of filter KAG is implemented.The IAG data
is stored into the RAM and the convolution process is implemented.

![Screenshot 2023-08-24 123903](https://github.com/NiharGowdaS/Image-processing-using-Verilog/assets/77974814/f681800d-f162-44a3-b9f1-e1e2bed4c0aa)

The verilog module has 5 modules  
1.Control   
2.Bram  
3.IAG  
4.KAG  
5.Compute  

Bram module - stores the image data of 220*220 pixel image.   
IAG (Image Address Generator) module selects the address of required pixels, and pass it to Compute module   
KAG(Kernel Address Generator) module is the input data , which is multiplied with image data in compute module  
Control module is the top module which gives control signals for the above modules .





