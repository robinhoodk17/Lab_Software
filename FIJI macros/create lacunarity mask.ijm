//this macro takes all ROIs and replaces them with a single pixel 
roiManager("Combine");
roiManager("Add");
roiManager("Select", roiManager("count")-1);
run("Create Mask");