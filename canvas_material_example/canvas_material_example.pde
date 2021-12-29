Table myActivity;

// store the number of rows separately to number of days, as the data is by hour, not by day
int numRows;
int numDays;

void setup() {
  size(800, 450);

  myActivity = loadTable("phil_hours.csv", "header");

  numRows = myActivity.getRowCount();
  // the total number of days is the number stored in the last row (numRows-1) in the "Day" column
  numDays = myActivity.getRow(numRows-1).getInt("Day");
  

  // use noStroke() and fill() for the final product
  // use stroke(255) and noFill() to see how it works
  noStroke();
  // stroke(255);
  // noFill();
  fill(207, 140,216);
}

void draw() {
  background(0);

  // for each our: this data is the hourly dataset, there is also minute-by-minute or daily available
  for (int i = 0; i < numRows; i++) {

    // How sedentary am I?

    // The goal of this visualisation is to rotate a bunch of little charts around a single point for each day
    // The idea is that this will show us some overall patterns.

    // step 1: get the data
    float sedentaryness = myActivity.getRow(i).getFloat("Sedentary Activity (proportion)");
    float lightActivity = myActivity.getRow(i).getFloat("Light Activity (proportion)");
    float moderateActivity = myActivity.getRow(i).getFloat("Moderate Activity (proportion)");

    // step 2: create a centre for today's circle
    // doubles as the first vertex and how we figure out where the other points go
    float dayNum = myActivity.getRow(i).getInt("Day");
    
    float xCentre = map(dayNum, 0, numDays, 100, width - 100);    
    float yCentre = height/2;

    // step 3: figure out the angle that we go around the circle
    // NOTE it's 24-hours in a day, so we map from 0, 24 hours to TWO_PI (aka radians)
    float angle = map(i, 0, 24, 0, TWO_PI);

    // vertex 1 will be the centre of the circle (xCentre, yCentre)
    // for vertex 2, we want to move the point further around the circle when I was more sedentary
    // sedentaryRadius: how far this vertex will be from today's centre point
    float sedentaryRadius = 25;
    // sedentary angle: sedentaryness is from 0 to 1, so multiply by 12 to get an angle between 0 and 12
    // I came up with 12 by trial and error.
    float sedentaryAngle = 12 * sedentaryness;

    // figure out vertex location.
    float sedentaryX = xCentre + sedentaryRadius * sin(angle + radians(sedentaryAngle));
    float sedentaryY = yCentre + sedentaryRadius * cos(angle + radians(sedentaryAngle));

    // add the amount of light activity I got, using same method as above
    float lightRadius = 40;
    float lightAngle = 15 * lightActivity;
    
    float lightX = xCentre + lightRadius * sin(angle + radians(lightAngle));
    float lightY = yCentre + lightRadius * cos(angle + radians(lightAngle));


    // and the amount of moderate activity
    float moderateRadius = 65;
    float moderateAngle = 18 * moderateActivity;
    
    float moderateX = xCentre + moderateRadius * sin(angle + radians(moderateAngle));
    float moderateY = yCentre + moderateRadius * cos(angle + radians(moderateAngle));

    // calculate colours for the shapes - by trial and error
    float redVal = map(sedentaryness, 0, 1, 250, 100);
    float greenVal = map(lightActivity, 0, 1, 110, 250);
    float blueVal = map(moderateActivity, 0, 1, 200, 85);
    
    fill(redVal, greenVal, blueVal);
    // start drawing the shape for this hour
    beginShape();
    // start the shape at the centre of the day's circle
    vertex(xCentre, yCentre);
    // add a vertex for how sedentary I was in this hour
    vertex(sedentaryX, sedentaryY);
    // and how much light activity I got 
    vertex(lightX, lightY);
    // and moderate
    vertex(moderateX, moderateY);
    // finish the shape
    endShape();
  }
}
void mouseClicked() {save("output.png");}
