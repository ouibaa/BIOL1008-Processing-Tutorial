size(2000,400);
//noStroke();

color A = color(32, 27, 191);
color B = color(224, 23, 29);

int boxWidth = 100;
int boxTotal = width/boxWidth;

for (int i = 0; i < boxTotal; i++){
  float propGradient = map(i, 0, boxTotal, 0, 1);
  color interpColor = lerpColor(A, B, propGradient);
  fill(interpColor);
  rect(i*boxWidth, 0, boxWidth, height);  
}
