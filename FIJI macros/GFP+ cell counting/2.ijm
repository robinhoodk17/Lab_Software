title = "workfile";
setOption("BlackBackground", true);
run("Convert to Mask");
run("Dilate");
run("Dilate");
run("Erode");
run("Erode");
run("Analyze Particles...", "size=50-Infinity show=Nothing include add");
close();
roiManager("Combine");
run("Create Mask");
roiManager("Delete");
selectWindow("C2-" + title);
run("Threshold...");