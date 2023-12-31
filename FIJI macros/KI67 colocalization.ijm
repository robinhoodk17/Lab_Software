run("Duplicate...", "duplicate");
title = getTitle();
run("Split Channels");
setAutoThreshold("Default dark");
setOption("BlackBackground", true);
run("Convert to Mask");
selectWindow("C1-" + title);
run("Top Hat...", "radius=10");
setAutoThreshold("Default dark");
run("Convert to Mask");
run("Watershed");
setAutoThreshold("Default dark");
run("Analyze Particles...", "size=100-Infinity pixel include add");
close();
selectWindow("C2-" + title);
roiManager("Combine");
setBackgroundColor(0, 0, 0);
run("Clear Outside");
roiManager("Delete");
setAutoThreshold("Default dark");
run("Analyze Particles...", "size=100-Infinity pixel include add");
