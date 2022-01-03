// set the size of the canvas
size(1000, 300);

// load your data
Table myData;

myData = loadTable("demoData.csv", "header");

// get the number of rows in this data set
int numRows = myData.getRowCount();

// get the maximum average steps per minute for each row
float maxSteps = 0.0;

for (int i = 0; i < numRows; i++) {
  float steps = myData.getRow(i).getFloat("Steps (average per min)");
  maxSteps = max(steps, maxSteps);
}

// print out the maximum average steps per minute value
println(maxSteps);
