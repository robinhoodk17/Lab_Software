title = getTitle();
run("Analyze Particles...", "include add");
//We add the second group first because analyze particles adds them automatically as the first group, so they
//would be impossible to tell apart from the first group
RoiManager.selectGroup(0)
RoiManager.setGroup(2);
roiManager("Combine");
run("Create Mask");
rename("group2_Mask");
selectWindow(title);
roiManager("deselect");
run("Select None");
run("Analyze Particles...", "include add");
RoiManager.selectGroup(0)
roiManager("Combine");
run("Create Mask");
rename("group1_Mask");