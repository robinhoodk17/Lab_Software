title = getTitle();
run("Split Channels");
selectWindow("C1-" + title);
run("Duplicate...", " ");
run("32-bit");
run("Gaussian Blur...", "sigma=2");
run("Subtract Background...", "rolling=20 sliding");
run("Find Edges");
//run("Gaussian Blur...", "sigma=.5");
//setThreshold(1, 255);
setAutoThreshold("Default dark");
run("Convert to Mask");
run("Dilate");
run("Dilate");
run("Dilate");
run("Erode");
run("Erode");
run("Erode");
run("Analyze Particles...", "size=50-Infinity show=Nothing include add");
close();
run("Merge Channels...", "c1=[C1-"+title +"] c2=[C2-"+title +"]  c3=[C3-"+title +"] create");