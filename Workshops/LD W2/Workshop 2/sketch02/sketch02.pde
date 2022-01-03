size(800, 600);

Table myData;
myData = loadTable("android-data.csv", "header");

int numRows = myData.getRowCount();

float maxValue = 0;
for (int i = 0; i < numRows; i++){
  float currentStep = myData.getFloat(i, "Steps");
  maxValue = max(currentStep, maxValue);
}

float minValue = 999999;
for (int i = 0; i < numRows; i++){
  float currentStep = myData.getFloat(i, "Steps");
  minValue = min(currentStep, minValue);
  println(minValue);
}

println("The max value is", maxValue);
println("The min value is", minValue);

for (int i = 0; i < numRows; i++) {
  float stepCount = myData.getFloat(i, "Steps");
  float mappedStepCount = map(stepCount, minValue, maxValue, 0, height);
  float barWidth = width / numRows;
  rect(i * barWidth, height-mappedStepCount, barWidth, mappedStepCount);
}
