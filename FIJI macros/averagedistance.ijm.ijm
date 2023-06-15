roiManager("Combine");
roiManager("Add");
roiManager("Select", roiManager("count")-1);
run("Create Mask");	
setAutoThreshold("Default");
//setThreshold(0, 128);
setOption("BlackBackground", true);
run("Convert to Mask");
run("Distance Map");
run("Duplicate...", " ");
roiManager("reset");
run("Invert");
setOption("ScaleConversions", false);
run("H_Watershed");
run("Analyze Particles...", "exclude add in_situ");
roiManager("Combine");
roiManager("Add");
close();
close();
setThreshold(1, 255);
roiManager("Select", roiManager("count")-1);
roiManager("measure");
roiManager(3)