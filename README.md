# Hackathon

AWFLOW
HashNode Blog    
- By Debuggers

## Problem Statement
Our problem statement was to develop an application that focuses on estimating air and water turbidity using a smartphone. Air quality estimation involves imaging of the sun by placing appropriate light diffusing mechanisms using hardware and development of an application to process different sun geometry or controllers to estimate the atmospheric optical thickness. On the other hand, water quality is determined by finding dynamic water turbidity value and its analysis using IR turbidity sensors.

## Significance of Problem 
Turbidity is the measure of relative clarity of a liquid. It is an optical characteristic of water and is a measurement of the amount of light that is scattered by material in the water when a light is shined through the water sample. The higher the intensity of scattered light, the higher the turbidity.
Turbidity makes water cloudy or opaque.The water collected in a bottle will be used to find out the turbidity, which is measured by shining a light through the water and is reported in nephelometric turbidity units (NTU). During periods of low flow (base flow), many rivers are a clear green color, and turbidites are low, usually less than 10 NTU.
Excessive turbidity, or cloudiness, in drinking water is aesthetically unappealing, and may also represent a health concern. Turbidity can provide food and shelter for pathogens. If not removed, the causes of high turbidity can promote regrowth of pathogens in the water, leading to waterborne disease outbreaks, which have caused significant cases of intestinal sickness.

It can also have many negative effects on aquatic life. The suspended sediments, that cause turbidity, can block light to aquatic plants, smother aquatic organisms, and carry contaminants and pathogens, such as lead, mercury, and bacteria. Moreover, waters with high levels of suspended solids absorb more light, which can cause an increase in water temperature, creating even lower dissolved oxygen.This stresses aerobic aquatic organisms and could ultimately lead to fish kills. 
Using this application we can find the turbidity of air and water,then on the basis of the result we can decide whether it's appropriate to consume it or not.This will reduce the risks of illness caused by turbidity and also will contribute in saving the aquatic lives that are at risk due to the turbid water.Further, we can also work towards eliminating the turbidity by looking into its cause and finding a solution.

## Gaps & Challenges in Existing Solutions 

The existing solutions of the similar problem have 2 main challenges:
- We need different applications and hardwares to determine air turbidity and water turbidity.
- Other methods focus mainly on the hardware ,whereas the proposed solution uses a compact hardware and is majorly based on software.

## Our Idea / Solution 


### AIR TURBIDITY

This application is supposed to calculate and return 2 values that signifies the air and water turbidity, using an image.
Starting with air turbidity. The air turbidity can be defined as reduction in the transparency of air.Which is a result of scattering of light by tiny particles suspended in the air (such as water droplets, ice crystals, dust and smoke particles) and also from the absorption of light by water vapor. 
There are some core concepts used to measure air turbidity.Such as: 
Image indexing. It is the indexing of different images after manipulation and visualisation of some Rgb values, which is done using a code.
Light diffusion mechanism which is used for measuring electromagnetic radiation and wavelength.
Optical thickness measurement is necessary to find the transparency in the atmosphere.Last and most important one is sun viewing geometry with schi depth principle.

DATA ARRANGEMENT TO STORE VALUES IN 2D OR IN 3D FORM






Now Moving to the most important part, that is working on the air turbidity prototype.The prototype starts with image capture and visualisation of its Rgb values. Then the values of  er and wavelength is determined using Raman spectroscopy .Furthermore we use Scott filter for optical thickness .
After image manipulation and Rgb values we calculate the sun geometry.Visualisation helps us in getting the values of intensity and other parameters such as Er, wavelength etc. And then we conclude the turbidity condition of atmospheric pressure using various hardware and external resources.





Images of college after running code for rgb values. The color differentiation is also there in code to obtain images with different color.






After Rgb we have



For this we need to required hardware for comparing light on image with different intensity.
 





### WATER TURBIDITY

While estimating the water turbidity however,things are a little different.The presence of organic and inorganic m-particles in water bodies affects the lives of aquatic living organisms. Also, the presence of such m-particles in drinking water above the threshold level may cause serious health hazards to our society.All suspended inorganic, organic and m-organisms in water cause light scattering which can be estimated by commercially available turbidimeters such as 2100Q portable turbidimeters. Nephelometric 90 degree light scattering measurement is considered to be the standard method for turbidity measurement in nephelometric turbidity unit (NTU). This approach is based on intensity comparison of the scattered light beam from a given water sample under investigation to the laboratory prepared standard reference turbid medium such as formazin standard suspension. The technique is primarily based on Mie-scattering principle where a quasi-collimated light beam from an IR source is allowed to incident on a turbid medium and the scattered flux from this medium is monitored at right angle to the direction of the incident beam. 
 
For overall estimation of suspended particle concentration where size of the particles may vary from less than 2 mm to 2000 mm, Mie scattering principle is valid. Hence, for monitoring the overall quality of water, nephelometric technique is being widely used.


## Technology Used And Functionalities 

### AIR TURBIDITY

1. Image indexing :
An indexed image uses direct mapping of pixel values to colormap values. The color of each image pixel is determined by using the corresponding value of X as an index into the map . A colormap is often stored with an indexed image and is automatically loaded with the image when you use the imread function.
2. Light diffusion mechanism :
The scattering of light by reflection or transmission. Diffuse reflection results when light strikes an irregular surface such as a frosted window or the surface of a frosted or coated light bulb Since most biological samples are turbid media, the study of light scattering has usually required the techniques in light diffusion measurement. The diffusion comes from repeated small angle forward scattering related to Mie scattering as well as from large angle scattering arising from sub-micron internal structure.
3. Optical thickness :
In physics, optical depth or optical thickness is the natural logarithm of the ratio of incident to transmitted radiant power through a material, and spectral optical depth or spectral optical thickness is the natural logarithm of the ratio of incident to transmitted spectral radiant power through a material.
4. Sun Geometry :
Sun geometry is the determining factor of heat gain, shading and the potential of daylight penetration. Temperature, precipitation, wind and sunshine have a direct effect on buildings. A deliberate choice of surroundings may permit us to take advantage of the elements that make the environment more favorable in calculating turbidity

### WATER TURBIDITY

The proposed sensing system is based on International Organization for Standardization for water quality in which the scattered radiation flux from a turbid medium is measured at right angle to the direction of the incoming signal.30 According to Mie-scattering principle, the radiation flux scattered by a suspended particles is given by the following equation:

where, F is the scattered light flux, V is the scattered volume, c is the suspended particle concentration in the medium, E is the irradiance of the incident beam, Qs is the scattering efficiency which depends both on the size of the m-particle present in the medium and wavelength of the incident radiation, p is the particle density and D is the particle diameter. In nephelometry, the scattered flux is measured at right angle to the direction of incoming radiation. For this specific angle, the scattered flux F becomes least sensitive to the size of the particles and thus, Qs will depend only on the wavelength of the incident radiation. Hence, for the same incident IR-radiation, the scattering flux F would be directly proportional to the concentration of the m-particles present in the medium.

Total Suspended Solids (TSS) refers to any particles that are suspended in the water column. These particles can include silt, algae, sediment, and other solids floating in the water (both organic and inorganic). These particles are defined as being large enough to not pass through the filter (through the filtration process) used to separate them from the water. Suspended solids absorb heat from sunlight and as a result, the water temperature increases resulting in a deprivation of dissolved oxygen in the water which can be disastrous to aquatic life if levels are too high. TSS can be measured in ppm, mg/L, g/L and %.

Total Suspended Solids (mg/L) = (weight before filtering – weight after filtering) / sample volume in litres


 

Considering that the light scattering is taking place from the center of the sample holder, then the scattered flux arriving at the IR detector will vary within the range 90+1.14 degree .
The inner wall of the Nylon block is blackened so that the effect of the ambient light on the IR detector is minimal. Low cost, high mechanical strength and superior resistance to wear from chemicals make Nylon material a primary choice for fabricating the optical holder in the present investigation. The overall dimension of the setup was measured to be 140 mm in length, 80 mm in both breadth and 40 mm in width; the weight of the proposed device along with the phone was approximately 250 g.



#### Light Scattering Phenomena
When light is transmitted onto a water body, the suspended particles will block the transmission of light from going through the water. In pure or very clear water, the light transmission will be largely uninterrupted, with a small scattering effect. The pattern of interaction between light and suspended solids is depending on the size, shape and composition of the particles in the solution and on the wavelength of the incident light. Besides the scattering effect, the transmitted light will also be absorbed and attenuated in its intensity by the particles . Therefore, the equation can be derived based on Beer-Lambert law as shown by
I=Ioexp(−[αa+αb]xc)
where
- I = resultant light intensity
- I0 = light intensity at point 0.
- 0 = starting point of the light passage through the absorbing medium.
- X = length of the medium or the distance of light travel through the medium.
- c = since the medium is a solution, the concentration is included
- αa = absorption coefficient.
- αb = scattering coefficient.

If the solution consists of particles with different absorbing and scattering coefficients, the total absorption and scattering coefficient, αa and αs, are equal to the sum of the absorption and scattering coefficients of all the particles.

## Your Learnings & Takeaways 
By working on this project, we all have learned major skills related to Android Application Development. Working together in a group helped us evolve team spirit and coordination. We also have got an idea about project management. This problem statement is quite practical and the development of this product has made us research a lot, which eventually has contributed to our understanding and has made us familiar to the use of Flutter and other tools. It also incorporates additional knowledge about the hardwares that is used in this project.

Justifying the methodologies that were best suitable for the project development, we optimized and improved processes and the overall approach wherever necessary and finally came up with our application, which has contributed in development of our knowledge regarding the work we carried out.

## Conclusion
Any user can use this product to achieve the approximate figures of the turbidity present in air/water. With a very compact hardware, this application provides a user friendly interface to ensure maximum usability.
This App can manage an increasing number of users after analyzing and improving the app's performance with zero downtime which guarantees the scalability of the application.
The user is just required to upload an image and the application after processing will indicate if the air or water is safe in terms of turbidity.The estimation of the turbidity present in the water and air will surely contribute to the economic sustainability. Further, it also supports long-term economic growth without any negative impact on the environment.

Turbidity is very harmful for aquatic life as the suspended contaminants block light to aquatic plants. Using this application we can derive the turbidity and then can work towards eliminating it, which supports sustainable mobility, and innovation in sustainable construction, which contributes in achieving environmental sustainability on several fronts.





