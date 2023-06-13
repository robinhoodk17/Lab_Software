title = "workfile";
setOption("BlackBackground", true);
run("Convert to Mask");
run("Watershed");
run("Analyze Particles...", "size=50-Infinity show=Nothing include add");
close();
selectWindow("Mask");
roiManager("Measure");
close()