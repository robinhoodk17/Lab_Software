 title = getTitle();
for (i = 0; i < (roiManager("count"));i++){
	selectWindow(title);
	roiManager("select", i);
	run("Duplicate...", "duplicate");
}
waitForUser("Finished");