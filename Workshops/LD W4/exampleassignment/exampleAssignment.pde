Table myData;
myData = loadTable("Health Data Hours - 7 Days.csv", "header");
int numRows = myData.getRowCount();

println("There are", numRows, "rows of data");

size(1000, 350); // pick an appropriate size for your sketch

// Find the min/max values.
float minStepsValue = 0;
float maxStepsValue = 0;
float minHeartValue = 0;
float maxHeartValue = 0;

for ( int i=0; i < numRows; i++ ) {
  float steps = myData.getFloat(i, "Steps (count)");
  float heartRate = myData.getFloat(i, "Heart Rate (count/min)");
  minStepsValue = min(steps, minStepsValue);
  maxStepsValue = max(steps, maxStepsValue);
  
  minHeartValue = min(heartRate, minHeartValue);
  maxHeartValue = max(heartRate, maxHeartValue);
}

println("Min heart rate is:", minHeartValue);
println("Max heart rate is:", maxHeartValue);

// Set up a variable to hold the current day.
int dayNumber = 0;

// Start drawing a shape.
for (int i = 0; i < numRows; i++) {

  float value = myData.getFloat(i, "Steps (count)");
  float heartRate = myData.getFloat(i, "Heart Rate (count/min)");

  beginShape();

  if( i % 24 == 0 ) {
    dayNumber++;
  }

  float centerX = map(dayNumber, 1, 7, 75, width-75);
  float centerY = height/2;

  float angle = map(i, 0, 24, 0, TWO_PI);

  float mappedValueSteps = map(value, minStepsValue, maxStepsValue, 5, 50);
  float mappedValueHeart = map(heartRate, minHeartValue, maxHeartValue, 30, 80); 

  float distanceOffset = mappedValueSteps;
  float angleOffset1 = mappedValueHeart;
  float angleOffset2 = 36;
  float outerRadius = 70;

  float mappedHeartForLerp = map(heartRate, minHeartValue, maxHeartValue, 0, 1);
  color lowHeart = color(165, 0, 0); // A dark red
  color highHeart = color(0, 180, 85); // A verdant green
  color mappedStepColor = lerpColor(lowHeart, highHeart, mappedHeartForLerp);
  fill(mappedStepColor);

  vertex(centerX, centerY);

  float controlPointx1 = centerX + distanceOffset * sin(angle - radians(angleOffset1));
  float controlPointy1 = centerY + distanceOffset * cos(angle - radians(angleOffset1));

  float controlPointx2 = centerX + distanceOffset * sin(angle + radians(angleOffset2));
  float controlPointy2 = centerY + distanceOffset * cos(angle + radians(angleOffset2));


  float outerX = centerX + outerRadius * sin(angle);
  float outerY = centerY + outerRadius * cos(angle);

  bezierVertex(controlPointx1, controlPointy1, controlPointx2, controlPointy2, outerX, outerY);


  float controlPointx3 = centerX + distanceOffset * sin(angle - radians(angleOffset2));
  float controlPointy3 = centerY + distanceOffset * cos(angle - radians(angleOffset2));

  float controlPointx4 = centerX + distanceOffset * sin(angle + radians(angleOffset1));
  float controlPointy4 = centerY + distanceOffset * cos(angle + radians(angleOffset1));


  bezierVertex(controlPointx3, controlPointy3, controlPointx4, controlPointy4, centerX, centerY);

  endShape();
}

save("My picture.png");
