// Set the dimensions for the sketch window.
size(700, 700);

// Load the data from our data file.
// Put the data loading code here including the number of rows of data.
Table myData = new Table();
myData = loadTable("ios-daily-subset.csv", "header");

int numRows = myData.getRowCount();
// End loading code.

// Find the bounds of our data.
// Put the min/max code here.
float maxNo = 0;
float minNo = 999;
for(int i = 0; i < numRows; i++){
  maxNo = max(maxNo, myData.getFloat(i, 4));
  minNo = min(minNo, myData.getFloat(i, 4));  
}
// End min/max code.

// Start drawing our data.
// Calculate the width and height of each box.
float boxWidth = width/7; // We have 7 days in a week.
float boxHeight = height/7; // And 7 weeks of data.

color from = color(32, 27, 191);
color to = color(224, 23, 29);

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
  float diffVal = map(value, minNo, maxNo, 0, 1);
  color interP = lerpColor (from, to, diffVal);
  fill(diffVal);
  
  
  // End colour code.
  
  // Draw a rectangle for each cell of the heatmap.
  rect(boxXPosition, boxYPosition, boxWidth, boxHeight);
}
