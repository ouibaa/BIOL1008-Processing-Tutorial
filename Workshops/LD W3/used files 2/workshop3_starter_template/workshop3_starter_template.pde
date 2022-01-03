// Set the dimensions for the sketch window.
size(700, 700);

// Load the data from our data file.
// Put the data loading code here including the number of rows of data.


// End loading code.

// Find the bounds of our data.
// Put the min/max code here.


// End min/max code.

// Start drawing our data.
// Calculate the width and height of each box.
float boxWidth = width/7; // We have 7 days in a week.
float boxHeight = height/7; // And 7 weeks of data.

// Start a loop to draw with our data.
for (int i=0; i<numRows; i++ ) {

  // Get the value for the current row of data.
  float value = myData.getFloat(i, "Steps (count)");

  // Calculate the X position of the box.
  // The % represents modulus division.
  float boxXPosition = (i%7) * boxWidth;
  // Calculate the Y position of the box.
  float boxYPosition = (i/7) * boxHeight;
  
  // Use println to show what the values are for the position.
  println("i:",i, "X:", boxXPosition, "Y:",boxYPosition);

  // Put your colour code here.
  
  
  
  
  // End colour code.
  
  // Draw a rectangle for each cell of the heatmap.
  rect(boxXPosition, boxYPosition, boxWidth, boxHeight);
}
