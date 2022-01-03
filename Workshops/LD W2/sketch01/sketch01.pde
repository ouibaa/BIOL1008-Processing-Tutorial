Table myData;
myData = loadTable("android-data.csv");

float minValue = 0;
float maxValue = 0;

int numRows = myData.getRowCount();
println("There are", numRows, "rows of data");

for (int i = 0; i < numRows; i++){
  float value = myData.getFloat(i, 2);
  println(value);
  
  minValue = min(value, minValue);
  maxValue = max(value, maxValue);
}

println("Minimum value: ", minValue);
println("Maximum value: ", maxValue);

for (int i = 0; i < numRows; i++){
  float value = myData.getFloat(i, "Steps (average per min)");
  float barHeight = map(value, minValue, maxValue, 0, height);
  rect(i*5, 0, 5, barHeight);
}
