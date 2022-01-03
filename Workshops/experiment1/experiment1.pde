// set the size of the canvas
size(1000, 300);

// load your data
Table hoursData;
Table daysData;
hoursData = loadTable("hours_200318125710.csv", "header");
daysData = loadTable("days_200318125723.csv", "header");
// get the number of rows in this data set
int numRows = hoursData.getRowCount();
int numDays = daysData.getRowCount();
// get the maximum average steps per minute for each row
float maxSteps = 0.0;
float maxDay = 0.0;
float maxDaySteps = 0.0;
for (int i = 0; i < numRows; i++) {
  float steps = hoursData.getRow(i).getFloat("Steps (average per min)");
  maxSteps = max(steps, maxSteps);
}

for (int i = 0; i < numDays; i++) {
  float day = daysData.getRow(i).getFloat("Day");
  float daySteps = daysData.getRow(i).getFloat("Steps (average per min)");
  maxDay = max(day, maxDay);
  maxDaySteps = max(daySteps, maxDaySteps);
}


// print out the maximum average steps per minute value
println(maxSteps, maxDay);

background(255);
stroke(150);

for (int i = 0; i < numRows; i++) {
  beginShape();
  
  int dayNumber = hoursData.getRow(i).getInt("Day");
  float centreX = map(dayNumber, 0, maxDay, 100, width - 100);
  float centreY = height/2;

  float angle = map(i, 0, 24, 0, TWO_PI);

  vertex(centreX, centreY);

  float sedentary = hoursData.getRow(i).getFloat("Sedentary Activity (proportion)");
  float mappedSedentary = map(sedentary, 0, 1, 10, 40);
  
  float avSteps = hoursData.getRow(i).getFloat("Steps (average per min)");
  float mappedSteps = map(avSteps, 0, maxSteps, 10, 40);
  
  float daySteps = daysData.getRow(dayNumber).getFloat("Steps (average per min)");
  float mappedDaySteps = map(daySteps, 0, maxDaySteps, 10, 40);

  float distanceOffset = mappedSedentary;
  float angleOffset1 = mappedDaySteps;
  float angleOffset2 = mappedSteps;  
  float outerRadius = 65;

  float vigorous = hoursData.getRow(i).getFloat("Vigorous Activity (proportion)");
  float mappedVigorous = map(vigorous, 0, 1, 180, 255);

  float moderate = hoursData.getRow(i).getFloat("Moderate Activity (proportion)");
  float mappedModerate = map(moderate, 0, 1, 120, 255);
  
  float light = hoursData.getRow(i).getFloat("Light Activity (proportion)");
  float mappedLight = map(light, 0, 1, 0, 250);
  
  float colorSedentary = map(sedentary, 0, 1, 0, 250);

  float redCol = mappedVigorous + mappedLight;
  float greenCol = mappedModerate + mappedLight;
  float blueCol = colorSedentary;
  float opacity = 50;

  fill(redCol, greenCol, blueCol, opacity);
  
  float controlPointx1 = centreX + distanceOffset * sin(angle - radians(angleOffset1));
  float controlPointy1 = centreY + distanceOffset * cos(angle - radians(angleOffset1));

  float controlPointx2 = centreX + distanceOffset * sin(angle + radians(angleOffset2));
  float controlPointy2 = centreY + distanceOffset * cos(angle + radians(angleOffset2));


  float outerX = centreX + outerRadius * sin(angle);
  float outerY = centreY + outerRadius * cos(angle);

  bezierVertex(controlPointx1, controlPointy1, controlPointx2, controlPointy2, outerX, outerY);
  
  
  float controlPointx3 = centreX + distanceOffset * sin(angle - radians(angleOffset2));
  float controlPointy3 = centreY + distanceOffset * cos(angle - radians(angleOffset2));

  float controlPointx4 = centreX + distanceOffset * sin(angle + radians(angleOffset1));
  float controlPointy4 = centreY + distanceOffset * cos(angle + radians(angleOffset1));


  bezierVertex(controlPointx3, controlPointy3, controlPointx4, controlPointy4, centreX, centreY);

  endShape();
}


save("output.png");
