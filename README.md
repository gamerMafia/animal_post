# Animal's Post App

I have create this project for Cat and Dog info

## For API 
I have create API using Sanity Blog Template.
- Create Post using Sanity studio

## Flutter App
I use Getx in this project to manage page Navigation and State management

## Your Expectations
1. Document clearly any assumptions made during the design or development of the
   solution.
   
   Image-name : image-ea0053a4ae02ba4387880b66f0bea4e6bcecd5ad-726x406-png
   
   I Face one issue at image display time. The image URLs was not get from API Response it's only return image name without image extension. So i customise the image name and pass to asset sanity URL. Image URL (https://cdn.sanity.io/images/fzgnkp5p/production/1469c2f7305875e80722bb89f91608b54209be1d-1032x670.png)

   a. Why did you do it this way?
   - Because I this is the best way to show Image 
    
2. Briefly describe your design/architectural decisions.

   a. The idea of this assignment is to understand “how you think?”
   - I think this project is small so i use getx and Getx is fast for development process.
    
3. Briefly describe shortcomings of the current solution.

   a. Briefly describe proposal(s) to overcome such shortcomings
   - I have to setup image name and URL to cut and joint logic for all the image those come from API response. So I put that login in Response file so I don't have to call that logic all the time.
   - This is the first time I use Sanity for API and Create Sanity blog.
   
