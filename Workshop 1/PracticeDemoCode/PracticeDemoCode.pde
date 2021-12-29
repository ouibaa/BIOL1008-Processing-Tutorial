Table dataTable;

float numOfDays;

float maxSteps;

void setup() {
  maxSteps = 0.0;
  size(800, 450);
  dataTable = loadTable("data.csv", "header");
  println(dataTable.getRowCount() + " total rows in table");
  println(dataTable.getColumnCount() + " total columns in table");
  
 
 numOfDays = dataTable.getRowCount();
 
 for (int i = 0; i < numOfDays; i++) {
   int day = dataTable.getRow(i).getInt("day");
   int steps = dataTable.getRow(i).getInt("steps");
   
   maxSteps = max(maxSteps, steps);
   println("On day", day, "your step cout was", steps);
 }
   println("Your max step count was " + maxSteps);
}

void draw() {
    background(255);
    for (int i = 0; i < numOfDays; i++) {
      float x = map(i, 0, numOfDays, 10, width - 10);
      float y = height - map(dataTable.getRow(i).getFloat("steps"), 0, maxSteps, 10, height-10);
      stroke(0);
      fill(0);
      ellipse(x, y, 10, 10);
    }
    
    {
      fill(100);
      stroke(100);
      ellipse(50, height - 10, 20, 20);
    }
    
    for (int i = 1; i < numOfDays; i++) {
      float x1 = map(i-1, 0, numOfDays, 10, width - 10);
      float y1 = height - map(dataTable.getRow(i-1).getFloat("steps"),0,maxSteps,10,height-10);
      float x2 = map(i, 0, numOfDays, 10, width-10);
      float y2 = height - map(dataTable.getRow(i).getFloat(1), 0, maxSteps, 10, height-10);
      stroke(0);
      line(x1, y1, x2, y2);
    }
}