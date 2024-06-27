
# Color Screen

In this project we are generating 50 colors and then populating them in the rows and when you select one of the colors it segue to another page with the 
color selected

## How it works
- we are generating random color using "UIColor" , "CGFloat"(used for generating float numbers), 
- we are appending these thus genrated numbers in the colors array 
-  we generate table using table delegate and datasource
    - in this we have two function 
        - numberOfRowsInSection
            - used for telling how many rows to make
        - cellForRowAt
            - used for telling what to do with each row -> contains functions
            - dequeresablecell -> tells to reuse a already populated set of rows with the new color as we scroll according to the array of color we alreadyhave
        - didSelectRowAt
            - used for getting the index of thus selected row 
            - using the idex to get the color at that selected row and to perform segue to the next screen where we are swtting the background of the page useng the color of the selected row 

- we also have to do a prepare for segue which
    - which sets the destination of the segue with the view controller we already have created
    - tells the type of the sender 



> read code for more understanding

