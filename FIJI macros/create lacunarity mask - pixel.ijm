//this macro takes all ROIs and replaces them with a single pixel 
newImage(getTitle(), "8-bit black", getWidth(), getHeight(), 1);
for (i = 0; i < (roiManager("count")-1);i++){
	roiManager("select", i);
	roiManager("measure");
	xm = floor(getValue("XM raw"));
	ym = floor(getValue("YM raw"));
	setPixel(xm, ym, 255);
}
roiManager("deselect");
roiManager("delete");
run("Clear Results");