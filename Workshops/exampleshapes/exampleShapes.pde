// several examples of different patterns.
size(1000, 600);
background(255);
// noFill();
fill(200, 100, 250, 50);
stroke(100);
/*////////////////////////////////////////////////////
 
Row 1

Examples using 7 days

////////////////////////////////////////////////////*/

float numRows = 7;

for (int i = 0; i < numRows; i++) {
	beginShape();
	float centerX = 100.0;
	float centerY = 100.0;

	// add center vertex
	vertex(centerX, centerY);

	float angle = map(i, 0, numRows, 0, TWO_PI);

	float outerRadius = 60.0;
  float angleOffset1 =  10;
  float distanceOffset2 = 10;
  float angleOffset3 = 10;

	float xCoord1 = centerX + outerRadius * sin(angle - radians(angleOffset1));
	float yCoord1 = centerY + outerRadius * cos(angle - radians(angleOffset1));
	vertex(xCoord1, yCoord1);
	// ellipse(xCoord1, yCoord1, 3, 3);

	float xCoord2 = centerX + (outerRadius - distanceOffset2) * sin(angle);
	float yCoord2 = centerY + (outerRadius - distanceOffset2) * cos(angle);
	vertex(xCoord2, yCoord2);
	// ellipse(xCoord2, yCoord2, 3, 3);


	float xCoord3 = centerX + outerRadius * sin(angle + radians(angleOffset3));
	float yCoord3 = centerY + outerRadius * cos(angle + radians(angleOffset3));
	vertex(xCoord3, yCoord3);
	// ellipse(xCoord3, yCoord3, 3, 3);
	endShape(CLOSE);
}




for (int i = 0; i < numRows; i++) {
	beginShape();
	float centerX = 300.0;
	float centerY = 100.0;
	// add center vertex
	curveVertex(centerX, centerY);
	curveVertex(centerX, centerY);

	float angle = map(i, 0, numRows, 0, TWO_PI);

	float outerRadius = 60.0;
	float angleOffset1 = 20;
  float distanceOffset2 = 40;
  float angleOffset3 = 20;

	float xCoord1 = centerX + outerRadius * sin(angle - radians(angleOffset1));
	float yCoord1 = centerY + outerRadius * cos(angle - radians(angleOffset1));
	curveVertex(xCoord1, yCoord1);

	float xCoord2 = centerX + (outerRadius - distanceOffset2) * sin(angle);
	float yCoord2 = centerY + (outerRadius - distanceOffset2) * cos(angle);
	curveVertex(xCoord2, yCoord2);


	float xCoord3 = centerX + outerRadius * sin(angle + radians(angleOffset3));
	float yCoord3 = centerY + outerRadius * cos(angle + radians(angleOffset3));
	curveVertex(xCoord3, yCoord3);

	curveVertex(centerX, centerY);
	curveVertex(centerX, centerY);
	endShape();
}




for (int i = 0; i < numRows; i++) {
	beginShape();
	float centerX = 500.0;
	float centerY = 100.0;
	// add center vertex
	curveVertex(centerX, centerY);
	curveVertex(centerX, centerY);

	float angle = map(i, 0, numRows, 0, TWO_PI);

	float outerRadius = 60.0;
	float angleOffset1 = 20;
  float distanceOffset2 = 10;
  float angleOffset3 = 20;

	float xCoord1 = centerX + outerRadius * sin(angle - radians(angleOffset1));
	float yCoord1 = centerY + outerRadius * cos(angle - radians(angleOffset1));
	curveVertex(xCoord1, yCoord1);

	float xCoord2 = centerX + (outerRadius + distanceOffset2) * sin(angle);
	float yCoord2 = centerY + (outerRadius + distanceOffset2) * cos(angle);
	curveVertex(xCoord2, yCoord2);


	float xCoord3 = centerX + outerRadius * sin(angle + radians(angleOffset3));
	float yCoord3 = centerY + outerRadius * cos(angle + radians(angleOffset3));
	curveVertex(xCoord3, yCoord3);

	curveVertex(centerX, centerY);
	curveVertex(centerX, centerY);
	endShape();
}




for (int i = 0; i < numRows; i++) {
	beginShape();
	float centerX = 700.0;
	float centerY = 100.0;

	float angle = map(i, 0, numRows, 0, TWO_PI);

	float outerRadius = 60.0;
	float distanceOffset0 = 10;
  float angleOffset1 = 40;
  float distanceOffset1 = 20;
  float angleOffset2 = 30;
  float distanceOffset2 = 45;
  float distanceOffset3 = 30;
  float angleOffset4 = 30;
  float distanceOffset4 = 45;
  float angleOffset5 = 40;
  float distanceOffset5 = 20;
  
	float xCoord0 = centerX + (outerRadius + distanceOffset0) * sin(angle);
	float yCoord0 = centerY + (outerRadius + distanceOffset0) * cos(angle);
	curveVertex(xCoord0, yCoord0);
	curveVertex(xCoord0, yCoord0);

	float xCoord1 = centerX + (outerRadius - distanceOffset1) * sin(angle - radians(angleOffset1));
	float yCoord1 = centerY + (outerRadius - distanceOffset1) * cos(angle - radians(angleOffset1));
	curveVertex(xCoord1, yCoord1);

	float xCoord2 = centerX + (outerRadius - distanceOffset2) * sin(angle - radians(angleOffset2));
	float yCoord2 = centerY + (outerRadius - distanceOffset2) * cos(angle - radians(angleOffset2));
	curveVertex(xCoord2, yCoord2);

	float xCoord3 = centerX + (outerRadius - distanceOffset3) * sin(angle);
	float yCoord3 = centerY + (outerRadius - distanceOffset3) * cos(angle);
	curveVertex(xCoord3, yCoord3);

	float xCoord4 = centerX + (outerRadius - distanceOffset4) * sin(angle + radians(angleOffset4));
	float yCoord4 = centerY + (outerRadius - distanceOffset4) * cos(angle + radians(angleOffset4));
	curveVertex(xCoord4, yCoord4);

	float xCoord5 = centerX + (outerRadius - distanceOffset5) * sin(angle + radians(angleOffset5));
	float yCoord5 = centerY + (outerRadius - distanceOffset5) * cos(angle + radians(angleOffset5));
	curveVertex(xCoord5, yCoord5);

	curveVertex(xCoord0, yCoord0);
	curveVertex(xCoord0, yCoord0);
	endShape();
}






for (int i = 0; i < numRows; i++) {
	beginShape();
	float centerX = 900.0;
	float centerY = 100.0;

	float angle = map(i, 0, numRows, 0, TWO_PI);

	float innerRadius = 10.0;
	float outerRadius = 80.0;
	float midRadius = 45.0;

  float controlPointAngleOffset = 35;
  float angleOffset =  20;
  float distanceOffset2 = 10;

	float xCoord0 = centerX + innerRadius * sin(angle);
	float yCoord0 = centerY + innerRadius * cos(angle);

	vertex(xCoord0, yCoord0);

	float controlPointx1 = centerX + midRadius * sin(angle - radians(controlPointAngleOffset));
	float controlPointy1 = centerY + midRadius * cos(angle - radians(controlPointAngleOffset));
	
	float xCoord1 = centerX + outerRadius * sin(angle - radians(angleOffset));
	float yCoord1 = centerY + outerRadius * cos(angle - radians(angleOffset));
	bezierVertex(controlPointx1, controlPointy1, controlPointx1, controlPointy1, xCoord1, yCoord1);

	float xCoord2 = centerX + (outerRadius - distanceOffset2) * sin(angle);
	float yCoord2 = centerY + (outerRadius - distanceOffset2) * cos(angle);
	vertex(xCoord2, yCoord2);

	float xCoord3 = centerX + outerRadius * sin(angle + radians(angleOffset));
	float yCoord3 = centerY + outerRadius * cos(angle + radians(angleOffset));
	vertex(xCoord3, yCoord3);

	float controlPointx2 = centerX + midRadius * sin(angle + radians(controlPointAngleOffset));
	float controlPointy2 = centerY + midRadius * cos(angle + radians(controlPointAngleOffset));
	bezierVertex(controlPointx2, controlPointy2, controlPointx2, controlPointy2, xCoord0, yCoord0);

	endShape();
}







/*////////////////////////////////////////////////////
 
Row 2

Examples using 7 days

////////////////////////////////////////////////////*/


numRows = 7;
for (int i = 0; i < numRows; i++) {
	beginShape();

	float centerX = 100.0;
	float centerY = 300.0;

	float angle = map(i, 0, numRows, 0, TWO_PI);

	float distanceOffset = 100;
	float angleOffset = 45;

  vertex(centerX, centerY);
  
	float controlPointx1 = centerX + distanceOffset * sin(angle - radians(angleOffset));
	float controlPointy1 = centerY + distanceOffset * cos(angle - radians(angleOffset));

	float controlPointx2 = centerX + distanceOffset * sin(angle + radians(angleOffset));
	float controlPointy2 = centerY + distanceOffset * cos(angle + radians(angleOffset));

	bezierVertex(controlPointx1, controlPointy1, controlPointx2, controlPointy2, centerX, centerY);

	endShape();
}






for (int i = 0; i < numRows; i++) {
  beginShape();

  float centerX = 300.0;
  float centerY = 300.0;

  float angle = map(i, 0, numRows, 0, TWO_PI);

  float distanceOffset = 40;
  float angleOffset1 = 50;
  float angleOffset2 = 50;  
  float outerRadius = 100;

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




for (int i = 0; i < numRows; i++) {
	beginShape();

	float centerX = 500.0;
	float centerY = 300.0;

	float angle = map(i, 0, numRows, 0, TWO_PI);

	float innerRadius = 20;
	float distanceOffset = 50;  
  float outerRadius = 80;
	float angleOffset = 55;


  float innerX = centerX + innerRadius * sin(angle);
  float innerY = centerY + innerRadius * cos(angle);
  vertex(innerX, innerY);

	float controlPointx1 = centerX + distanceOffset * sin(angle + radians(angleOffset));
	float controlPointy1 = centerY + distanceOffset * cos(angle + radians(angleOffset));

	float controlPointx2 = centerX + distanceOffset * sin(angle + radians(angleOffset));
	float controlPointy2 = centerY + distanceOffset * cos(angle + radians(angleOffset));

	float outerX = centerX + outerRadius * sin(angle);
	float outerY = centerY + outerRadius * cos(angle);

	float controlPointx3 = centerX + distanceOffset * sin(angle - radians(angleOffset));
	float controlPointy3 = centerY + distanceOffset * cos(angle - radians(angleOffset));

	float controlPointx4 = centerX + distanceOffset * sin(angle - radians(angleOffset));
	float controlPointy4 = centerY + distanceOffset * cos(angle - radians(angleOffset));

	bezierVertex(controlPointx1, controlPointy1, controlPointx2, controlPointy2, outerX, outerY);
	bezierVertex(controlPointx3, controlPointy3, controlPointx4, controlPointy4, innerX, innerY);

	endShape();
}


for (int i = 0; i < numRows; i++) {
	beginShape();

	float centerX = 700.0;
	float centerY = 300.0;

	float angle = map(i, 0, numRows, 0, TWO_PI);


  float distanceOffset = 80;
	float distanceOffsetAnchor = 60;
	float angleOffsetAnchor = 20;

  vertex(centerX, centerY);

	float anchorPointx1 = centerX + distanceOffsetAnchor * sin(angle + radians(angleOffsetAnchor));
	float anchorPointy1 = centerY + distanceOffsetAnchor * cos(angle + radians(angleOffsetAnchor));


	float controlPointx = centerX + distanceOffset * sin(angle);
	float controlPointy = centerY + distanceOffset * cos(angle);

	float anchorPointx2 = centerX + distanceOffsetAnchor * sin(angle - radians(angleOffsetAnchor));
	float anchorPointy2 = centerY + distanceOffsetAnchor * cos(angle - radians(angleOffsetAnchor));

	vertex(anchorPointx1, anchorPointy1);
	bezierVertex(controlPointx, controlPointy, controlPointx, controlPointy, anchorPointx2, anchorPointy2);
	vertex(centerX, centerY);

	endShape();
}





for (int i = 0; i < numRows; i++) {
	beginShape();

	float centerX = 900.0;
	float centerY = 300.0;

	float angle = map(i, 0, numRows, 0, TWO_PI);


	float distanceOffset = 50;
	float angleOffset = 30;
  float distanceOffset2 = 100;

  vertex(centerX, centerY);

	float anchorPointx1 = centerX + distanceOffset * sin(angle + radians(angleOffset));
	float anchorPointy1 = centerY + distanceOffset * cos(angle + radians(angleOffset));

	float anchorPointx2 = centerX + distanceOffset2 * sin(angle);
	float anchorPointy2 = centerY + distanceOffset2 * cos(angle);


	float anchorPointx3 = centerX + distanceOffset * sin(angle - radians(angleOffset));
	float anchorPointy3 = centerY + distanceOffset * cos(angle - radians(angleOffset));

	float controlPointx = centerX + distanceOffset * sin(angle);
	float controlPointy = centerY + distanceOffset * cos(angle);


	bezierVertex(controlPointx, controlPointy, controlPointx, controlPointy, anchorPointx1, anchorPointy1);
	bezierVertex(controlPointx, controlPointy, controlPointx, controlPointy, anchorPointx2, anchorPointy2);
	bezierVertex(controlPointx, controlPointy, controlPointx, controlPointy, anchorPointx3, anchorPointy3);

	bezierVertex(controlPointx, controlPointy, controlPointx, controlPointy, centerX, centerY);

	endShape();
}



/*////////////////////////////////////////////////////
 
Row 3

Examples using 24 hours

////////////////////////////////////////////////////*/




numRows = 24;






for (int i = 0; i < numRows; i++) {
	beginShape();
	float centerX = 100.0;
	float centerY = 500.0;

	float angle = map(i, 0, numRows, 0, TWO_PI);

	float outerRadius = 60.0;
	float distanceOffset0 = 10;
  float angleOffset1 = 40;
  float distanceOffset1 = 20;
  float angleOffset2 = 30;
  float distanceOffset2 = 45;
  float distanceOffset3 = 5;
  float angleOffset4 = 30;
  float distanceOffset4 = 45;
  float angleOffset5 = 40;
  float distanceOffset5 = 20;
  
  
	float xCoord0 = centerX + (outerRadius + distanceOffset0) * sin(angle);
	float yCoord0 = centerY + (outerRadius + distanceOffset0) * cos(angle);
	curveVertex(xCoord0, yCoord0);
	curveVertex(xCoord0, yCoord0);

	float xCoord1 = centerX + (outerRadius - distanceOffset1) * sin(angle - radians(angleOffset1));
	float yCoord1 = centerY + (outerRadius - distanceOffset1) * cos(angle - radians(angleOffset1));
	curveVertex(xCoord1, yCoord1);

	float xCoord2 = centerX + (outerRadius - distanceOffset2) * sin(angle - radians(angleOffset2));
	float yCoord2 = centerY + (outerRadius - distanceOffset2) * cos(angle - radians(angleOffset2));
	curveVertex(xCoord2, yCoord2);

	float xCoord3 = centerX + (outerRadius - distanceOffset3) * sin(angle);
	float yCoord3 = centerY + (outerRadius - distanceOffset3) * cos(angle);
	curveVertex(xCoord3, yCoord3);
	
	float xCoord4 = centerX + (outerRadius - distanceOffset4) * sin(angle + radians(angleOffset4));
	float yCoord4 = centerY + (outerRadius - distanceOffset4) * cos(angle + radians(angleOffset4));
	curveVertex(xCoord4, yCoord4);

	float xCoord5 = centerX + (outerRadius - distanceOffset5) * sin(angle + radians(angleOffset5));
	float yCoord5 = centerY + (outerRadius - distanceOffset5) * cos(angle + radians(angleOffset5));
	curveVertex(xCoord5, yCoord5);
	
	curveVertex(xCoord0, yCoord0);
	curveVertex(xCoord0, yCoord0);
	endShape();
}



for (int i = 0; i < numRows; i++) {
	beginShape();
	float centerX = 300;
	float centerY = 500;

	float angle = map(i, 0, numRows, 0, TWO_PI);

	float distanceOffset = 80;
  float angleOffset1 = 15;
  float angleOffset2 = 20;
  float distanceOffset1 = 70;
  float distanceOffset2 = 50;
  float distanceOffset3 = 30;
  
  
	float outerX = centerX + distanceOffset * sin(angle);
	float outerY = centerY + distanceOffset * cos(angle);
	vertex(outerX, outerY);


	float controlPointx1 = centerX + distanceOffset1 * sin(angle + radians(angleOffset1));
	float controlPointy1 = centerY + distanceOffset1 * cos(angle + radians(angleOffset1));

	float controlPointx2 = centerX + distanceOffset2 * sin(angle - radians(angleOffset2));
	float controlPointy2 = centerY + distanceOffset2 * cos(angle - radians(angleOffset2));

	float anchorPointx1 = centerX + distanceOffset3 * sin(angle);
	float anchorPointy1 = centerY + distanceOffset3 * cos(angle);

	bezierVertex(controlPointx1, controlPointy1, controlPointx2, controlPointy2, anchorPointx1, anchorPointy1);

	vertex(outerX, outerY);

	endShape();
}


for (int i = 0; i < numRows; i++) {
	beginShape();

	float centerX = 500.0;
	float centerY = 500.0;

	float angle = map(i, 0, numRows, 0, TWO_PI);

	vertex(centerX, centerY);

	float distanceOffset = 120;
	float angleOffset = 20;
	float controlPointx1 = centerX + distanceOffset * sin(angle - radians(angleOffset));
	float controlPointy1 = centerY + distanceOffset * cos(angle - radians(angleOffset));

	float controlPointx2 = centerX + distanceOffset * sin(angle + radians(angleOffset));
	float controlPointy2 = centerY + distanceOffset * cos(angle + radians(angleOffset));

	bezierVertex(controlPointx1, controlPointy1, controlPointx2, controlPointy2, centerX, centerY);

	endShape();
}



for (int i = 0; i < numRows; i++) {
	beginShape();

	float centerX = 700.0;
	float centerY = 500.0;

	float angle = map(i, 0, numRows, 0, TWO_PI);

	float innerRadius = 40;
  float angleOffset = 23;
  float distanceOffset1 = 50;
  float distanceOffset2 = 70;


	float innerX = centerX + innerRadius * sin(angle);
	float innerY = centerY + innerRadius * cos(angle);
	vertex(innerX, innerY);


	float anchorPointx1 = centerX + distanceOffset1 * sin(angle + radians(angleOffset));
	float anchorPointy1 = centerY + distanceOffset1 * cos(angle + radians(angleOffset));

	float anchorPointx2 = centerX + distanceOffset2 * sin(angle);
	float anchorPointy2 = centerY + distanceOffset2 * cos(angle);


	float anchorPointx3 = centerX + distanceOffset1 * sin(angle - radians(angleOffset));
	float anchorPointy3 = centerY + distanceOffset1 * cos(angle - radians(angleOffset));

	float controlPointx = centerX + distanceOffset1 * sin(angle);
	float controlPointy = centerY + distanceOffset1 * cos(angle);


	bezierVertex(controlPointx, controlPointy, controlPointx, controlPointy, anchorPointx1, anchorPointy1);
	bezierVertex(controlPointx, controlPointy, controlPointx, controlPointy, anchorPointx2, anchorPointy2);
	bezierVertex(controlPointx, controlPointy, controlPointx, controlPointy, anchorPointx3, anchorPointy3);

	bezierVertex(controlPointx, controlPointy, controlPointx, controlPointy, innerX, innerY);

	endShape();
}



for (int i = 0; i < numRows; i++) {
	beginShape();

	float centerX = 900.0;
	float centerY = 500.0;

	float angle = map(i, 0, numRows, 0, TWO_PI);

  float distanceOffset = 70;
	float distanceOffsetAnchor = 80;
	float angleOffsetAnchor = 10;

  vertex(centerX, centerY);


	float anchorPointx1 = centerX + distanceOffsetAnchor * sin(angle + radians(angleOffsetAnchor));
	float anchorPointy1 = centerY + distanceOffsetAnchor * cos(angle + radians(angleOffsetAnchor));

	
	float controlPointx = centerX + distanceOffset * sin(angle);
	float controlPointy = centerY + distanceOffset * cos(angle);

	float anchorPointx2 = centerX + distanceOffsetAnchor * sin(angle - radians(angleOffsetAnchor));
	float anchorPointy2 = centerY + distanceOffsetAnchor * cos(angle - radians(angleOffsetAnchor));


	vertex(anchorPointx1, anchorPointy1);
	bezierVertex(controlPointx, controlPointy, controlPointx, controlPointy, anchorPointx2, anchorPointy2);
	vertex(centerX, centerY);

	endShape();
}
