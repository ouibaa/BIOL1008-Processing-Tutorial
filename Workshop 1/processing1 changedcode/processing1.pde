// somewhere to store the data from our csv file
Table abcd;

// declare a variable to store the total number of days
float numDays;
// declare the maximum steps from our data, we will start at 0
float maxSteps = 0.0;

// setup the sketch, run setup() once at the start
void setup() {
  // tell the sketch window how big it will be
  size(800, 450);
  // add the data to our table. Note: our data does have a header row
  abcd = loadTable("data.csv", "header");
  // user feedback : how many rows are in the table
  println(abcd.getRowCount() + " total rows in table"); 
  // assign the number of rows to our numDays variable
  numDays = abcd.getRowCount(); 
  // for each table row... 
  for (int i = 0; i < numDays; i++) {
    // temporarily store which day and how many steps you did
    int day = abcd.getRow(i).getInt("day");
    int steps = abcd.getRow(i).getInt("steps"); 
    // was today was the day you did the most steps so far?
    // save the bigger value out of maxSteps and today's steps in maxSteps
    maxSteps = max(maxSteps, steps);
    // user feedback: how many steps did I do today
    println("On day", day, "your step count was", steps);
  }
}
// end setup()

// draw() is the part of the sketch that runs continuously
void draw() {
  background(255);
  //// draw a line chart
  //// start at int i = 1, since we draw between 2 points
  //for (int i = 1; i < numDays; i++) {
  //  // calculate position of first x, y coordinates
  //  float x1 = map(i-1, 0, numDays, 10, width - 10);
  //  // height - map() or otherwise the number will be upside down
  //  float y1 = height - map(abcd.getRow(i-1).getFloat("steps"), 0, maxSteps, 10, height-10);
  //  // calculate position of second x, y coordinates
  //  float x2 = map(i, 0, numDays, 10, width - 10);    
  //  float y2 = height - map(abcd.getRow(i).getFloat(1), 0, maxSteps, 10, height-10);
  //  // set stroke colour
  //  stroke(0);
  //  // draw line
  //  line(x1, y1, x2, y2);
  //}

  // draw circles on top of the line
  // start at int i = 0 to draw a circle at every point
  for (int i = 0; i < numDays; i++) {
    // calculate x, y, position for center of circle
    float xCoord = map(i, 0, numDays, 10, width - 10);
    float currentStepCount = abcd.getRow(i).getInt("steps");
    float yCoord = map(currentStepCount, 0, maxSteps, height -10, 10);
    // set stroke and fill colour of circles
    stroke(0);
    fill(0);
    // draw ellipse
    ellipse(xCoord, yCoord, 10, 10);
  }
}
// end of draw();