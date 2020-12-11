 /// @description step

if (time < duration) 
{
	// what should the x be?
	x = EaseOutQuart(time, start, dest - start, duration);
	
	
	
	// what the image angle should be
	image_angle = -EaseOutQuart(time, startAngle, destAngle - startAngle, duration);
	
	// increment time
	time++;
} else {
	// swap start with destination
	var tempStart = start;
	start = dest;
	dest = tempStart;

	// swap start and destination angles
	var tempStartAngle = startAngle;
	startAngle = destAngle;
	destAngle = tempStartAngle;
	
	// reset time to 0
	time = 0;
}
/*
// check for y
if (time < yDuration) {
	y = EaseOutQuart(time, startY, destY - startY, duration);
} else {		
	var tempStartY = startY;
	startY = destY;
	destY = tempStartY;
}
*/