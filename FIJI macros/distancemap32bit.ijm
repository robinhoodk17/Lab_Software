iterations = 15

for (i = 0; i < iterations; i++) {
	roiManager("Select", i);
	run("Create Mask");
	rename("Mask-"+ i);
	run("Invert");
	run("Distance Map");
	setThreshold(0, 244, "raw");
	run("Create Selection");
	roiManager("Add");
}

selectWindow("Mask-"+(iterations-1));
rename("distanceMap");
run("32-bit");
roiManager("Select", (iterations));
roiManager("Delete");
roiManager("Select", (iterations-1));
roiManager("Delete");

for(i = iterations-2; i>=0;i--){
	imageCalculator("Add", "distanceMap","Mask-"+i);
	selectWindow("Mask-"+i);
	close();
	if(i>0)
	{
		roiManager("Select", (i));
		roiManager("Delete");
	}
}
