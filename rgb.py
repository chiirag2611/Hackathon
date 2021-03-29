if __name__ == '__main__':
    import imageio
    import matplotlib.pyplot as plt
    %matplotlib inline

    pic = imageio.imread('F:/demo_2.jpg')
    plt.figure(figsize = (15,15))

    plt.imshow(pic)
    
print('Type of the image : ' , type(pic))
print()
print('Shape of the image : {}'.format(pic.shape))
print('Image Hight {}'.format(pic.shape[0]))
print('Image Width {}'.format(pic.shape[1]))
print('Dimension of Image {}'.format(pic.ndim))

Type of the image :  <class 'imageio.core.util.Image'>

Shape of the image : (562, 960, 3)
Image Hight 562
Image Width 960
Dimension of Image 3

print('Image size {}'.format(pic.size))
print('Maximum RGB value in this image {}'.format(pic.max()))
print('Minimum RGB value in this image {}'.format(pic.min()))

 
Image size 1618560
Maximum RGB value in this image 255
Minimum RGB value in this image 0

Image([109, 143,  46], dtype=uint8)
#In these case: R = 109 ; G = 143 ; B = 46 and we can realize that this particular pixel has a lot of GREEN in it. And now we could have also selected one of this number specifically by giving the index value of these three channel. Now we know for this

#0 index value for Red channel
#1 index value for Green channel
#2 index value for Blue channel
#But good to know that in OpenCV, Images takes as not RGB but BGR. imageio.imread loads image as RGB (or RGBA), but OpenCV assumes the image to be BGR or BGRA (BGR is the default OpenCV colour format).

# A specific pixel located at Row : 100 ; Column : 50 
# Each channel's value of it, gradually R , G , B
print('Value of only R channel {}'.format(pic[ 100, 50, 0]))
print('Value of only G channel {}'.format(pic[ 100, 50, 1]))
print('Value of only B channel {}'.format(pic[ 100, 50, 2]))


plt.title('R channel')
plt.ylabel('Height {}'.format(pic.shape[0]))
plt.xlabel('Width {}'.format(pic.shape[1]))

plt.imshow(pic[ : , : , 0])
plt.show()
red_chn.JPG

plt.title('G channel')
plt.ylabel('Height {}'.format(pic.shape[0]))
plt.xlabel('Width {}'.format(pic.shape[1]))

plt.imshow(pic[ : , : , 1])
plt.show()
green_chn.JPG

plt.title('B channel')
plt.ylabel('Height {}'.format(pic.shape[0]))
plt.xlabel('Width {}'.format(pic.shape[1]))

plt.imshow(pic[ : , : , 2])
plt.show()
blue_chn.JPG

#Now, here we can also able to change the number of RGB values. As an example, let’s set the Red, Green, Blue layer for following Rows values to full intensity.

R channel: Row- 100 to 110
G channel: Row- 200 to 210
B channel: Row- 300 to 310
We’ll load the image once, so that we can visualize each change simultaneously.

pic = imageio.imread('F:/demo_2.jpg')

pic[50:150 , : , 0] = 255 # full intensity to those pixel's R channel
plt.figure( figsize = (10,10))
plt.imshow(pic)
plt.show()

R_chn.JPG

pic[200:300 , : , 1] = 255 # full intensity to those pixel's G channel
plt.figure( figsize = (10,10))
plt.imshow(pic)
plt.show()
red_grn_chn.JPG

pic[350:450 , : , 2] = 255 # full intensity to those pixel's B channel
plt.figure( figsize = (10,10))
plt.imshow(pic)
plt.show()
three_chn.JPG

#To make it more clear let’s change the column section too and this time we’ll change the RGB channel simultaneously.

# set value 200 of all channels to those pixels which turns them to white
pic[ 50:450 , 400:600 , [0,1,2] ] = 200 
plt.figure( figsize = (10,10))
plt.imshow(pic)
plt.show()